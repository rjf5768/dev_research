; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/spiff/command.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/spiff/command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_C_cmds = internal global [100 x i8*] zeroinitializer, align 16
@_C_nextcmd = internal global i32 0, align 4
@_C_cmdword = internal global [20 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"command word is too long\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tol\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nestcom\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"resetcomments\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"resetliterals\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"beginchar\00", align 1
@_W_bolchar = external dso_local global i8, align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"endchar\00", align 1
@_W_eolchar = external dso_local global i8, align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"addalpha\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"rem\00", align 1
@Z_err_buf = external dso_local global [0 x i8], align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"don't understand command %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @C_addcmd(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @_C_nextcmd, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @_C_nextcmd, align 4
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds [100 x i8*], [100 x i8*]* @_C_cmds, i64 0, i64 %5
  %7 = load i8*, i8** %2, align 8
  call void (i8**, i8*, ...) bitcast (void (...)* @S_savestr to void (i8**, i8*, ...)*)(i8** noundef %6, i8* noundef %7)
  ret void
}

declare dso_local void @S_savestr(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @C_docmds() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @_C_nextcmd, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [100 x i8*], [100 x i8*]* @_C_cmds, i64 0, i64 %8
  %10 = load i8*, i8** %9, align 8
  call void @_C_do_a_cmd(i8* noundef %10)
  br label %11

11:                                               ; preds = %6
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %2, !llvm.loop !4

14:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_C_do_a_cmd(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** %3, align 8
  call void (i8**, ...) bitcast (void (...)* @S_skipspace to void (i8**, ...)*)(i8** noundef %2)
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %5, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef %2)
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strlen(i8* noundef %9) #4
  %11 = icmp uge i64 %10, 20
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %12, %8
  %14 = load i8*, i8** %2, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @_C_cmdword, i64 0, i64 0), i8* noundef %14)
  br label %111

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef %2)
  %20 = load i8*, i8** %2, align 8
  call void (i8*, ...) bitcast (void (...)* @T_tolline to void (i8*, ...)*)(i8* noundef %20)
  br label %110

21:                                               ; preds = %15
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %22, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef %2)
  %26 = load i8*, i8** %2, align 8
  %27 = call i64 @strlen(i8* noundef %26) #4
  %28 = icmp uge i64 %27, 20
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i8*, i8** %2, align 8
  call void (i8*, i32, ...) bitcast (void (...)* @W_addcom to void (i8*, i32, ...)*)(i8* noundef %31, i32 noundef 0)
  br label %109

32:                                               ; preds = %21
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %33, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef %2)
  %37 = load i8*, i8** %2, align 8
  %38 = call i64 @strlen(i8* noundef %37) #4
  %39 = icmp uge i64 %38, 20
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i8*, i8** %2, align 8
  call void (i8*, i32, ...) bitcast (void (...)* @W_addcom to void (i8*, i32, ...)*)(i8* noundef %42, i32 noundef 1)
  br label %108

43:                                               ; preds = %32
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %44, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef %2)
  %48 = load i8*, i8** %2, align 8
  %49 = call i64 @strlen(i8* noundef %48) #4
  %50 = icmp uge i64 %49, 20
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i8*, i8** %2, align 8
  call void (i8*, ...) bitcast (void (...)* @W_addlit to void (i8*, ...)*)(i8* noundef %53)
  br label %107

54:                                               ; preds = %43
  %55 = load i8*, i8** %2, align 8
  %56 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %55, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  call void (...) @W_clearcoms()
  br label %106

59:                                               ; preds = %54
  %60 = load i8*, i8** %2, align 8
  %61 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %60, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  call void (...) @W_clearlits()
  br label %105

64:                                               ; preds = %59
  %65 = load i8*, i8** %2, align 8
  %66 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %65, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef %2)
  %69 = load i8*, i8** %2, align 8
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* @_W_bolchar, align 1
  br label %104

71:                                               ; preds = %64
  %72 = load i8*, i8** %2, align 8
  %73 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %72, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef %2)
  %76 = load i8*, i8** %2, align 8
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* @_W_eolchar, align 1
  br label %103

78:                                               ; preds = %71
  %79 = load i8*, i8** %2, align 8
  %80 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %79, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef %2)
  %83 = load i8*, i8** %2, align 8
  call void (i8*, ...) bitcast (void (...)* @P_addalpha to void (i8*, ...)*)(i8* noundef %83)
  br label %102

84:                                               ; preds = %78
  %85 = load i8*, i8** %2, align 8
  %86 = call i64 @strlen(i8* noundef %85) #4
  %87 = icmp eq i64 0, %86
  br i1 %87, label %97, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %2, align 8
  %90 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %89, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i8*, i8** %2, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 35, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92, %88, %84
  br label %101

98:                                               ; preds = %92
  %99 = load i8*, i8** %3, align 8
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* noundef %99) #5
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %97
  br label %102

102:                                              ; preds = %101, %82
  br label %103

103:                                              ; preds = %102, %75
  br label %104

104:                                              ; preds = %103, %68
  br label %105

105:                                              ; preds = %104, %63
  br label %106

106:                                              ; preds = %105, %58
  br label %107

107:                                              ; preds = %106, %52
  br label %108

108:                                              ; preds = %107, %41
  br label %109

109:                                              ; preds = %108, %30
  br label %110

110:                                              ; preds = %109, %19
  br label %111

111:                                              ; preds = %110, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @C_clear_cmd() #0 {
  store i8 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_C_cmdword, i64 0, i64 0), align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @C_is_cmd(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_C_cmdword, i64 0, i64 0), align 16
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 0, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %9, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @_C_cmdword, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %4, align 8
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef %4)
  %14 = load i8*, i8** %4, align 8
  call void @_C_do_a_cmd(i8* noundef %14)
  store i32 1, i32* %2, align 4
  br label %16

15:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @S_wordcmp(...) #1

declare dso_local void @S_nextword(...) #1

declare dso_local void @S_skipspace(...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local void @Z_fatal(...) #1

declare dso_local void @S_wordcpy(...) #1

declare dso_local void @T_tolline(...) #1

declare dso_local void @W_addcom(...) #1

declare dso_local void @W_addlit(...) #1

declare dso_local void @W_clearcoms(...) #1

declare dso_local void @W_clearlits(...) #1

declare dso_local void @P_addalpha(...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}

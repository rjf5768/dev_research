; ModuleID = './command.ll'
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
  %2 = load i32, i32* @_C_nextcmd, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @_C_nextcmd, align 4
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds [100 x i8*], [100 x i8*]* @_C_cmds, i64 0, i64 %4
  call void (i8**, i8*, ...) bitcast (void (...)* @S_savestr to void (i8**, i8*, ...)*)(i8** noundef nonnull %5, i8* noundef %0) #5
  ret void
}

declare dso_local void @S_savestr(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @C_docmds() #0 {
  br label %1

1:                                                ; preds = %8, %0
  %.0 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %2 = load i32, i32* @_C_nextcmd, align 4
  %3 = icmp slt i32 %.0, %2
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [100 x i8*], [100 x i8*]* @_C_cmds, i64 0, i64 %5
  %7 = load i8*, i8** %6, align 8
  call void @_C_do_a_cmd(i8* noundef %7)
  br label %8

8:                                                ; preds = %4
  %9 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

10:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_C_do_a_cmd(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void (i8**, ...) bitcast (void (...)* @S_skipspace to void (i8**, ...)*)(i8** noundef nonnull %2) #5
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #5
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %12

5:                                                ; preds = %1
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef nonnull %2) #5
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %6) #6
  %8 = icmp ugt i64 %7, 19
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %10

10:                                               ; preds = %9, %5
  %11 = load i8*, i8** %2, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @S_wordcpy to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @_C_cmdword, i64 0, i64 0), i8* noundef %11) #5
  br label %95

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %13, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #5
  %.not1 = icmp eq i32 %14, 0
  br i1 %.not1, label %15, label %17

15:                                               ; preds = %12
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef nonnull %2) #5
  %16 = load i8*, i8** %2, align 8
  call void (i8*, ...) bitcast (void (...)* @T_tolline to void (i8*, ...)*)(i8* noundef %16) #5
  br label %94

17:                                               ; preds = %12
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %20, label %27

20:                                               ; preds = %17
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef nonnull %2) #5
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %21) #6
  %23 = icmp ugt i64 %22, 19
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i8*, i8** %2, align 8
  call void (i8*, i32, ...) bitcast (void (...)* @W_addcom to void (i8*, i32, ...)*)(i8* noundef %26, i32 noundef 0) #5
  br label %93

27:                                               ; preds = %17
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %28, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #5
  %.not3 = icmp eq i32 %29, 0
  br i1 %.not3, label %30, label %37

30:                                               ; preds = %27
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef nonnull %2) #5
  %31 = load i8*, i8** %2, align 8
  %32 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %31) #6
  %33 = icmp ugt i64 %32, 19
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i8*, i8** %2, align 8
  call void (i8*, i32, ...) bitcast (void (...)* @W_addcom to void (i8*, i32, ...)*)(i8* noundef %36, i32 noundef 1) #5
  br label %92

37:                                               ; preds = %27
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %38, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #5
  %.not4 = icmp eq i32 %39, 0
  br i1 %.not4, label %40, label %47

40:                                               ; preds = %37
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef nonnull %2) #5
  %41 = load i8*, i8** %2, align 8
  %42 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %41) #6
  %43 = icmp ugt i64 %42, 19
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i8*, i8** %2, align 8
  call void (i8*, ...) bitcast (void (...)* @W_addlit to void (i8*, ...)*)(i8* noundef %46) #5
  br label %91

47:                                               ; preds = %37
  %48 = load i8*, i8** %2, align 8
  %49 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %48, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)) #5
  %.not5 = icmp eq i32 %49, 0
  br i1 %.not5, label %50, label %51

50:                                               ; preds = %47
  call void (...) @W_clearcoms() #5
  br label %90

51:                                               ; preds = %47
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %52, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)) #5
  %.not6 = icmp eq i32 %53, 0
  br i1 %.not6, label %54, label %55

54:                                               ; preds = %51
  call void (...) @W_clearlits() #5
  br label %89

55:                                               ; preds = %51
  %56 = load i8*, i8** %2, align 8
  %57 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %56, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #5
  %.not7 = icmp eq i32 %57, 0
  br i1 %.not7, label %58, label %61

58:                                               ; preds = %55
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef nonnull %2) #5
  %59 = load i8*, i8** %2, align 8
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* @_W_bolchar, align 1
  br label %88

61:                                               ; preds = %55
  %62 = load i8*, i8** %2, align 8
  %63 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %62, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #5
  %.not8 = icmp eq i32 %63, 0
  br i1 %.not8, label %64, label %67

64:                                               ; preds = %61
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef nonnull %2) #5
  %65 = load i8*, i8** %2, align 8
  %66 = load i8, i8* %65, align 1
  store i8 %66, i8* @_W_eolchar, align 1
  br label %87

67:                                               ; preds = %61
  %68 = load i8*, i8** %2, align 8
  %69 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %68, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #5
  %.not9 = icmp eq i32 %69, 0
  br i1 %.not9, label %70, label %72

70:                                               ; preds = %67
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef nonnull %2) #5
  %71 = load i8*, i8** %2, align 8
  call void (i8*, ...) bitcast (void (...)* @P_addalpha to void (i8*, ...)*)(i8* noundef %71) #5
  br label %86

72:                                               ; preds = %67
  %73 = load i8*, i8** %2, align 8
  %strlenfirst = load i8, i8* %73, align 1
  %74 = icmp eq i8 %strlenfirst, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %76, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #5
  %.not10 = icmp eq i32 %77, 0
  br i1 %.not10, label %82, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** %2, align 8
  %80 = load i8, i8* %79, align 1
  %81 = icmp eq i8 %80, 35
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %75, %72
  br label %85

83:                                               ; preds = %78
  %84 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #5
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0)) #5
  br label %85

85:                                               ; preds = %83, %82
  br label %86

86:                                               ; preds = %85, %70
  br label %87

87:                                               ; preds = %86, %64
  br label %88

88:                                               ; preds = %87, %58
  br label %89

89:                                               ; preds = %88, %54
  br label %90

90:                                               ; preds = %89, %50
  br label %91

91:                                               ; preds = %90, %45
  br label %92

92:                                               ; preds = %91, %35
  br label %93

93:                                               ; preds = %92, %25
  br label %94

94:                                               ; preds = %93, %15
  br label %95

95:                                               ; preds = %94, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @C_clear_cmd() #2 {
  store i8 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_C_cmdword, i64 0, i64 0), align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @C_is_cmd(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = load i8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_C_cmdword, i64 0, i64 0), align 16
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %8, label %4

4:                                                ; preds = %1
  %5 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @S_wordcmp to i32 (i8*, i8*, ...)*)(i8* noundef %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @_C_cmdword, i64 0, i64 0)) #5
  %.not1 = icmp eq i32 %5, 0
  br i1 %.not1, label %6, label %8

6:                                                ; preds = %4
  store i8* %0, i8** %2, align 8
  call void (i8**, ...) bitcast (void (...)* @S_nextword to void (i8**, ...)*)(i8** noundef nonnull %2) #5
  %7 = load i8*, i8** %2, align 8
  call void @_C_do_a_cmd(i8* noundef %7)
  br label %9

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %8, %6
  %.0 = phi i32 [ 0, %8 ], [ 1, %6 ]
  ret i32 %.0
}

declare dso_local i32 @S_wordcmp(...) #1

declare dso_local void @S_nextword(...) #1

declare dso_local void @S_skipspace(...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local void @Z_fatal(...) #1

declare dso_local void @S_wordcpy(...) #1

declare dso_local void @T_tolline(...) #1

declare dso_local void @W_addcom(...) #1

declare dso_local void @W_addlit(...) #1

declare dso_local void @W_clearcoms(...) #1

declare dso_local void @W_clearlits(...) #1

declare dso_local void @P_addalpha(...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}

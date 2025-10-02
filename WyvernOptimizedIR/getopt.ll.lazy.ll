; ModuleID = './getopt.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unix_smail_opterr = dso_local global i32 1, align 4
@unix_smail_optind = dso_local global i32 1, align 4
@unix_smail_getopt.sp = internal global i32 1, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@unix_smail_optopt = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c": illegal option -- \00", align 1
@optarg = dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c": option requires an argument -- \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @unix_smail_getopt(i32 noundef %0, i8** nocapture noundef readonly %1, i8* noundef readonly %2) #0 {
  %4 = alloca [2 x i8], align 1
  %5 = alloca [2 x i8], align 1
  %6 = load i32, i32* @unix_smail_getopt.sp, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %37

8:                                                ; preds = %3
  %9 = load i32, i32* @unix_smail_optind, align 4
  %.not4 = icmp slt i32 %9, %0
  br i1 %.not4, label %10, label %24

10:                                               ; preds = %8
  %11 = load i32, i32* @unix_smail_optind, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %1, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %.not5 = icmp eq i8 %15, 45
  br i1 %.not5, label %16, label %24

16:                                               ; preds = %10
  %17 = load i32, i32* @unix_smail_optind, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %1, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %10, %8
  br label %142

25:                                               ; preds = %16
  %26 = load i32, i32* @unix_smail_optind, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %1, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %29, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #3
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @unix_smail_optind, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @unix_smail_optind, align 4
  br label %142

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36, %3
  %38 = load i32, i32* @unix_smail_optind, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %1, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @unix_smail_getopt.sp, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  store i32 %46, i32* @unix_smail_optopt, align 4
  %47 = icmp eq i8 %45, 58
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %2, i32 noundef %46) #3
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %78

51:                                               ; preds = %48, %37
  %52 = load i32, i32* @unix_smail_opterr, align 4
  %.not3 = icmp eq i32 %52, 0
  br i1 %.not3, label %63, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  store i8 %45, i8* %54, align 1
  %55 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  store i8 10, i8* %55, align 1
  %56 = load i8*, i8** %1, align 8
  %57 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %56) #3
  %58 = trunc i64 %57 to i32
  %59 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 noundef 2, i8* noundef %56, i32 noundef %58) #4
  %60 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 noundef 2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 20) #4
  %61 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %62 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 noundef 2, i8* noundef nonnull %61, i32 noundef 2) #4
  br label %63

63:                                               ; preds = %53, %51
  %64 = load i32, i32* @unix_smail_optind, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %1, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* @unix_smail_getopt.sp, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @unix_smail_getopt.sp, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load i32, i32* @unix_smail_optind, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @unix_smail_optind, align 4
  store i32 1, i32* @unix_smail_getopt.sp, align 4
  br label %77

77:                                               ; preds = %74, %63
  br label %142

78:                                               ; preds = %48
  %79 = getelementptr inbounds i8, i8* %49, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = icmp eq i8 %80, 58
  br i1 %81, label %82, label %126

82:                                               ; preds = %78
  %83 = load i32, i32* @unix_smail_optind, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %1, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* @unix_smail_getopt.sp, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = load i8, i8* %90, align 1
  %.not = icmp eq i8 %91, 0
  br i1 %.not, label %102, label %92

92:                                               ; preds = %82
  %93 = load i32, i32* @unix_smail_optind, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* @unix_smail_optind, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8*, i8** %1, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* @unix_smail_getopt.sp, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8* %101, i8** @optarg, align 8
  br label %125

102:                                              ; preds = %82
  %103 = load i32, i32* @unix_smail_optind, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @unix_smail_optind, align 4
  %.not1 = icmp slt i32 %104, %0
  br i1 %.not1, label %118, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @unix_smail_opterr, align 4
  %.not2 = icmp eq i32 %106, 0
  br i1 %.not2, label %117, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 %45, i8* %108, align 1
  %109 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  store i8 10, i8* %109, align 1
  %110 = load i8*, i8** %1, align 8
  %111 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %110) #3
  %112 = trunc i64 %111 to i32
  %113 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 noundef 2, i8* noundef %110, i32 noundef %112) #4
  %114 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 noundef 2, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef 33) #4
  %115 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %116 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 noundef 2, i8* noundef nonnull %115, i32 noundef 2) #4
  br label %117

117:                                              ; preds = %107, %105
  store i32 1, i32* @unix_smail_getopt.sp, align 4
  br label %142

118:                                              ; preds = %102
  %119 = load i32, i32* @unix_smail_optind, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* @unix_smail_optind, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8*, i8** %1, i64 %121
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** @optarg, align 8
  br label %124

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %92
  store i32 1, i32* @unix_smail_getopt.sp, align 4
  br label %141

126:                                              ; preds = %78
  %127 = load i32, i32* @unix_smail_optind, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %1, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* @unix_smail_getopt.sp, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @unix_smail_getopt.sp, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %126
  store i32 1, i32* @unix_smail_getopt.sp, align 4
  %138 = load i32, i32* @unix_smail_optind, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* @unix_smail_optind, align 4
  br label %140

140:                                              ; preds = %137, %126
  store i8* null, i8** @optarg, align 8
  br label %141

141:                                              ; preds = %140, %125
  br label %142

142:                                              ; preds = %141, %117, %77, %32, %24
  %.0 = phi i32 [ -1, %24 ], [ -1, %32 ], [ 63, %77 ], [ %46, %141 ], [ 63, %117 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

declare dso_local i32 @write(...) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

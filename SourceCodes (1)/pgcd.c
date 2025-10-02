; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pgcd.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pgcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i16* @pgcd(i16* noundef %0, i16* noundef %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  store i16* %0, i16** %3, align 8
  store i16* %1, i16** %4, align 8
  %9 = load i16*, i16** %3, align 8
  %10 = icmp ne i16* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i16*, i16** %3, align 8
  %13 = load i16, i16* %12, align 2
  %14 = add i16 %13, 1
  store i16 %14, i16* %12, align 2
  %15 = zext i16 %13 to i32
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i1 [ false, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = load i16*, i16** %3, align 8
  %21 = call i16* @pabs(i16* noundef %20)
  %22 = call i16* @pnew(i16* noundef %21)
  store i16* %22, i16** %5, align 8
  %23 = load i16*, i16** %4, align 8
  %24 = icmp ne i16* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load i16*, i16** %4, align 8
  %27 = load i16, i16* %26, align 2
  %28 = add i16 %27, 1
  store i16 %28, i16* %26, align 2
  %29 = zext i16 %27 to i32
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %25, %17
  %32 = phi i1 [ false, %17 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = load i16*, i16** %4, align 8
  %35 = call i16* @pabs(i16* noundef %34)
  %36 = call i16* @pnew(i16* noundef %35)
  store i16* %36, i16** %6, align 8
  store i16* null, i16** %7, align 8
  store i16* null, i16** %8, align 8
  br label %37

37:                                               ; preds = %41, %31
  %38 = load i16*, i16** %6, align 8
  %39 = call i32 @pcmpz(i16* noundef %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i16*, i16** %5, align 8
  %43 = load i16*, i16** %6, align 8
  %44 = call i16* @pdivmod(i16* noundef %42, i16* noundef %43, i16** noundef %7, i16** noundef %8)
  %45 = load i16*, i16** %6, align 8
  %46 = call i16* @psetq(i16** noundef %5, i16* noundef %45)
  %47 = load i16*, i16** %8, align 8
  %48 = call i16* @psetq(i16** noundef %6, i16* noundef %47)
  br label %37, !llvm.loop !4

49:                                               ; preds = %37
  %50 = load i16*, i16** %6, align 8
  %51 = icmp ne i16* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i16*, i16** %6, align 8
  %54 = load i16, i16* %53, align 2
  %55 = add i16 %54, -1
  store i16 %55, i16* %53, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i16*, i16** %6, align 8
  %60 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %59)
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %58, %52, %49
  %63 = phi i1 [ false, %52 ], [ false, %49 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = load i16*, i16** %7, align 8
  %66 = icmp ne i16* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i16*, i16** %7, align 8
  %69 = load i16, i16* %68, align 2
  %70 = add i16 %69, -1
  store i16 %70, i16* %68, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i16*, i16** %7, align 8
  %75 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %74)
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %73, %67, %62
  %78 = phi i1 [ false, %67 ], [ false, %62 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = load i16*, i16** %8, align 8
  %81 = icmp ne i16* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i16*, i16** %8, align 8
  %84 = load i16, i16* %83, align 2
  %85 = add i16 %84, -1
  store i16 %85, i16* %83, align 2
  %86 = zext i16 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i16*, i16** %8, align 8
  %90 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %89)
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %88, %82, %77
  %93 = phi i1 [ false, %82 ], [ false, %77 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  %95 = load i16*, i16** %3, align 8
  %96 = icmp ne i16* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load i16*, i16** %3, align 8
  %99 = load i16, i16* %98, align 2
  %100 = add i16 %99, -1
  store i16 %100, i16* %98, align 2
  %101 = zext i16 %100 to i32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i16*, i16** %3, align 8
  %105 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %104)
  %106 = icmp ne i32 %105, 0
  br label %107

107:                                              ; preds = %103, %97, %92
  %108 = phi i1 [ false, %97 ], [ false, %92 ], [ %106, %103 ]
  %109 = zext i1 %108 to i32
  %110 = load i16*, i16** %4, align 8
  %111 = icmp ne i16* %110, null
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load i16*, i16** %4, align 8
  %114 = load i16, i16* %113, align 2
  %115 = add i16 %114, -1
  store i16 %115, i16* %113, align 2
  %116 = zext i16 %115 to i32
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i16*, i16** %4, align 8
  %120 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %119)
  %121 = icmp ne i32 %120, 0
  br label %122

122:                                              ; preds = %118, %112, %107
  %123 = phi i1 [ false, %112 ], [ false, %107 ], [ %121, %118 ]
  %124 = zext i1 %123 to i32
  %125 = load i16*, i16** %5, align 8
  %126 = call i16* @presult(i16* noundef %125)
  ret i16* %126
}

declare dso_local i16* @pnew(i16* noundef) #1

declare dso_local i16* @pabs(i16* noundef) #1

declare dso_local i32 @pcmpz(i16* noundef) #1

declare dso_local i16* @pdivmod(i16* noundef, i16* noundef, i16** noundef, i16** noundef) #1

declare dso_local i16* @psetq(i16** noundef, i16* noundef) #1

declare dso_local i32 @pfree(...) #1

declare dso_local i16* @presult(i16* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}

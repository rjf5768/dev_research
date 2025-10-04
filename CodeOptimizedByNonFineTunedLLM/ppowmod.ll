; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/ppowmod.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/ppowmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pone = external dso_local global i16*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i16* @ppowmod(i16* noundef %0, i16* noundef %1, i16* noundef %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  store i16* %0, i16** %4, align 8
  store i16* %1, i16** %5, align 8
  store i16* %2, i16** %6, align 8
  store i16* null, i16** %7, align 8
  store i16* null, i16** %8, align 8
  store i16* null, i16** %9, align 8
  %10 = load i16*, i16** %6, align 8
  %11 = icmp ne i16* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i16*, i16** %6, align 8
  %14 = load i16, i16* %13, align 2
  %15 = add i16 %14, 1
  store i16 %15, i16* %13, align 2
  %16 = zext i16 %14 to i32
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i1 [ false, %3 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = load i16*, i16** %6, align 8
  %22 = load i16*, i16** %4, align 8
  %23 = icmp ne i16* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i16*, i16** %4, align 8
  %26 = load i16, i16* %25, align 2
  %27 = add i16 %26, 1
  store i16 %27, i16* %25, align 2
  %28 = zext i16 %26 to i32
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi i1 [ false, %18 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = load i16*, i16** %4, align 8
  %34 = call i16* @psetq(i16** noundef %8, i16* noundef %33)
  %35 = load i16*, i16** %5, align 8
  %36 = icmp ne i16* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i16*, i16** %5, align 8
  %39 = load i16, i16* %38, align 2
  %40 = add i16 %39, 1
  store i16 %40, i16* %38, align 2
  %41 = zext i16 %39 to i32
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %37, %30
  %44 = phi i1 [ false, %30 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = load i16*, i16** %5, align 8
  %47 = call i16* @psetq(i16** noundef %9, i16* noundef %46)
  %48 = load i16*, i16** @pone, align 8
  %49 = call i16* @psetq(i16** noundef %7, i16* noundef %48)
  br label %50

50:                                               ; preds = %76, %43
  %51 = load i16*, i16** %9, align 8
  %52 = call i32 @podd(i16* noundef %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i16*, i16** %8, align 8
  %56 = load i16*, i16** %7, align 8
  %57 = call i16* @pmul(i16* noundef %55, i16* noundef %56)
  %58 = load i16*, i16** %6, align 8
  %59 = call i16* @pdivmod(i16* noundef %57, i16* noundef %58, i16** noundef null, i16** noundef inttoptr (i64 -1 to i16**))
  %60 = call i16* @psetq(i16** noundef %7, i16* noundef %59)
  br label %61

61:                                               ; preds = %54, %50
  %62 = load i16*, i16** %9, align 8
  %63 = call i16* @phalf(i16* noundef %62)
  %64 = call i16* @psetq(i16** noundef %9, i16* noundef %63)
  %65 = load i16*, i16** %9, align 8
  %66 = call i32 @pcmpz(i16* noundef %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %77

69:                                               ; preds = %61
  %70 = load i16*, i16** %8, align 8
  %71 = load i16*, i16** %8, align 8
  %72 = call i16* @pmul(i16* noundef %70, i16* noundef %71)
  %73 = load i16*, i16** %6, align 8
  %74 = call i16* @pdivmod(i16* noundef %72, i16* noundef %73, i16** noundef null, i16** noundef inttoptr (i64 -1 to i16**))
  %75 = call i16* @psetq(i16** noundef %8, i16* noundef %74)
  br label %76

76:                                               ; preds = %69
  br i1 true, label %50, label %77

77:                                               ; preds = %76, %68
  %78 = load i16*, i16** %8, align 8
  %79 = icmp ne i16* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load i16*, i16** %8, align 8
  %82 = load i16, i16* %81, align 2
  %83 = add i16 %82, -1
  store i16 %83, i16* %81, align 2
  %84 = zext i16 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i16*, i16** %8, align 8
  %88 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %87)
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %86, %80, %77
  %91 = phi i1 [ false, %80 ], [ false, %77 ], [ %89, %86 ]
  %92 = zext i1 %91 to i32
  %93 = load i16*, i16** %9, align 8
  %94 = icmp ne i16* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load i16*, i16** %9, align 8
  %97 = load i16, i16* %96, align 2
  %98 = add i16 %97, -1
  store i16 %98, i16* %96, align 2
  %99 = zext i16 %98 to i32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i16*, i16** %9, align 8
  %103 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %102)
  %104 = icmp ne i32 %103, 0
  br label %105

105:                                              ; preds = %101, %95, %90
  %106 = phi i1 [ false, %95 ], [ false, %90 ], [ %104, %101 ]
  %107 = zext i1 %106 to i32
  %108 = load i16*, i16** %4, align 8
  %109 = icmp ne i16* %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load i16*, i16** %4, align 8
  %112 = load i16, i16* %111, align 2
  %113 = add i16 %112, -1
  store i16 %113, i16* %111, align 2
  %114 = zext i16 %113 to i32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i16*, i16** %4, align 8
  %118 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %117)
  %119 = icmp ne i32 %118, 0
  br label %120

120:                                              ; preds = %116, %110, %105
  %121 = phi i1 [ false, %110 ], [ false, %105 ], [ %119, %116 ]
  %122 = zext i1 %121 to i32
  %123 = load i16*, i16** %5, align 8
  %124 = icmp ne i16* %123, null
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load i16*, i16** %5, align 8
  %127 = load i16, i16* %126, align 2
  %128 = add i16 %127, -1
  store i16 %128, i16* %126, align 2
  %129 = zext i16 %128 to i32
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i16*, i16** %5, align 8
  %133 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %132)
  %134 = icmp ne i32 %133, 0
  br label %135

135:                                              ; preds = %131, %125, %120
  %136 = phi i1 [ false, %125 ], [ false, %120 ], [ %134, %131 ]
  %137 = zext i1 %136 to i32
  %138 = load i16*, i16** %6, align 8
  %139 = icmp ne i16* %138, null
  br i1 %139, label %140, label %150

140:                                              ; preds = %135
  %141 = load i16*, i16** %6, align 8
  %142 = load i16, i16* %141, align 2
  %143 = add i16 %142, -1
  store i16 %143, i16* %141, align 2
  %144 = zext i16 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load i16*, i16** %6, align 8
  %148 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %147)
  %149 = icmp ne i32 %148, 0
  br label %150

150:                                              ; preds = %146, %140, %135
  %151 = phi i1 [ false, %140 ], [ false, %135 ], [ %149, %146 ]
  %152 = zext i1 %151 to i32
  %153 = load i16*, i16** %7, align 8
  %154 = call i16* @presult(i16* noundef %153)
  ret i16* %154
}

declare dso_local i16* @psetq(i16** noundef, i16* noundef) #1

declare dso_local i32 @podd(i16* noundef) #1

declare dso_local i16* @pdivmod(i16* noundef, i16* noundef, i16** noundef, i16** noundef) #1

declare dso_local i16* @pmul(i16* noundef, i16* noundef) #1

declare dso_local i16* @phalf(i16* noundef) #1

declare dso_local i32 @pcmpz(i16* noundef) #1

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

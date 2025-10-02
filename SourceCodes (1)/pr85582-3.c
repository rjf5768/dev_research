; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85582-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85582-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @f1(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i32, align 4
  %8 = bitcast i128* %5 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 16
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  %11 = load i128, i128* %5, align 16
  store i128 %11, i128* %6, align 16
  store i32 %2, i32* %7, align 4
  %12 = load i128, i128* %6, align 16
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, -2
  %15 = zext i32 %14 to i128
  %16 = shl i128 %12, %15
  store i128 %16, i128* %4, align 16
  %17 = bitcast i128* %4 to { i64, i64 }*
  %18 = load { i64, i64 }, { i64, i64 }* %17, align 16
  ret { i64, i64 } %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @f2(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i32, align 4
  %8 = bitcast i128* %5 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 16
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  %11 = load i128, i128* %5, align 16
  store i128 %11, i128* %6, align 16
  store i32 %2, i32* %7, align 4
  %12 = load i128, i128* %6, align 16
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, -2
  %15 = zext i32 %14 to i128
  %16 = ashr i128 %12, %15
  store i128 %16, i128* %4, align 16
  %17 = bitcast i128* %4 to { i64, i64 }*
  %18 = load { i64, i64 }, { i64, i64 }* %17, align 16
  ret { i64, i64 } %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @f3(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i32, align 4
  %8 = bitcast i128* %5 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 16
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  %11 = load i128, i128* %5, align 16
  store i128 %11, i128* %6, align 16
  store i32 %2, i32* %7, align 4
  %12 = load i128, i128* %6, align 16
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, -2
  %15 = zext i32 %14 to i128
  %16 = lshr i128 %12, %15
  store i128 %16, i128* %4, align 16
  %17 = bitcast i128* %4 to { i64, i64 }*
  %18 = load { i64, i64 }, { i64, i64 }* %17, align 16
  ret { i64, i64 } %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i128, align 16
  %3 = alloca i128, align 16
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i128, align 16
  %8 = alloca i128, align 16
  %9 = alloca i128, align 16
  %10 = alloca i128, align 16
  %11 = alloca i128, align 16
  %12 = alloca i128, align 16
  %13 = alloca i128, align 16
  %14 = alloca i128, align 16
  %15 = alloca i128, align 16
  %16 = alloca i128, align 16
  %17 = alloca i128, align 16
  %18 = alloca i128, align 16
  %19 = alloca i128, align 16
  %20 = alloca i128, align 16
  %21 = alloca i128, align 16
  %22 = alloca i128, align 16
  %23 = alloca i128, align 16
  store i32 0, i32* %1, align 4
  store i128 2658455991569831745807614120560689152, i128* %2, align 16
  %24 = load i128, i128* %2, align 16
  store i128 %24, i128* %3, align 16
  %25 = bitcast i128* %3 to { i64, i64 }*
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 16
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call { i64, i64 } @f1(i64 noundef %27, i64 noundef %29, i32 noundef 5)
  %31 = bitcast i128* %4 to { i64, i64 }*
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 0
  %33 = extractvalue { i64, i64 } %30, 0
  store i64 %33, i64* %32, align 16
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 1
  %35 = extractvalue { i64, i64 } %30, 1
  store i64 %35, i64* %34, align 8
  %36 = load i128, i128* %4, align 16
  %37 = icmp ne i128 %36, 42535295865117307932921825928971026432
  br i1 %37, label %38, label %39

38:                                               ; preds = %0
  call void @abort() #2
  unreachable

39:                                               ; preds = %0
  store i128 37037603335494959104, i128* %5, align 16
  %40 = load i128, i128* %5, align 16
  store i128 %40, i128* %6, align 16
  %41 = bitcast i128* %6 to { i64, i64 }*
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 16
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call { i64, i64 } @f1(i64 noundef %43, i64 noundef %45, i32 noundef 64)
  %47 = bitcast i128* %7 to { i64, i64 }*
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %47, i32 0, i32 0
  %49 = extractvalue { i64, i64 } %46, 0
  store i64 %49, i64* %48, align 16
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %47, i32 0, i32 1
  %51 = extractvalue { i64, i64 } %46, 1
  store i64 %51, i64* %50, align 8
  %52 = load i128, i128* %7, align 16
  %53 = icmp ne i128 %52, 2658455991569831745807614120560689152
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  call void @abort() #2
  unreachable

55:                                               ; preds = %39
  %56 = load i128, i128* %5, align 16
  store i128 %56, i128* %8, align 16
  %57 = bitcast i128* %8 to { i64, i64 }*
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 16
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call { i64, i64 } @f1(i64 noundef %59, i64 noundef %61, i32 noundef 66)
  %63 = bitcast i128* %9 to { i64, i64 }*
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 0
  %65 = extractvalue { i64, i64 } %62, 0
  store i64 %65, i64* %64, align 16
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 1
  %67 = extractvalue { i64, i64 } %62, 1
  store i64 %67, i64* %66, align 8
  %68 = load i128, i128* %9, align 16
  %69 = icmp ne i128 %68, 10633823966279326983230456482242756608
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  call void @abort() #2
  unreachable

71:                                               ; preds = %55
  store i128 -170141183460469231731687303715884105728, i128* %10, align 16
  %72 = load i128, i128* %10, align 16
  store i128 %72, i128* %11, align 16
  %73 = bitcast i128* %11 to { i64, i64 }*
  %74 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 16
  %76 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %73, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call { i64, i64 } @f2(i64 noundef %75, i64 noundef %77, i32 noundef 5)
  %79 = bitcast i128* %12 to { i64, i64 }*
  %80 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %79, i32 0, i32 0
  %81 = extractvalue { i64, i64 } %78, 0
  store i64 %81, i64* %80, align 16
  %82 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %79, i32 0, i32 1
  %83 = extractvalue { i64, i64 } %78, 1
  store i64 %83, i64* %82, align 8
  %84 = load i128, i128* %12, align 16
  %85 = icmp ne i128 %84, -10633823966279326983230456482242756608
  br i1 %85, label %86, label %87

86:                                               ; preds = %71
  call void @abort() #2
  unreachable

87:                                               ; preds = %71
  %88 = load i128, i128* %10, align 16
  store i128 %88, i128* %13, align 16
  %89 = bitcast i128* %13 to { i64, i64 }*
  %90 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 16
  %92 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %89, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call { i64, i64 } @f2(i64 noundef %91, i64 noundef %93, i32 noundef 64)
  %95 = bitcast i128* %14 to { i64, i64 }*
  %96 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %95, i32 0, i32 0
  %97 = extractvalue { i64, i64 } %94, 0
  store i64 %97, i64* %96, align 16
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %95, i32 0, i32 1
  %99 = extractvalue { i64, i64 } %94, 1
  store i64 %99, i64* %98, align 8
  %100 = load i128, i128* %14, align 16
  %101 = icmp ne i128 %100, -9223372036854775808
  br i1 %101, label %102, label %103

102:                                              ; preds = %87
  call void @abort() #2
  unreachable

103:                                              ; preds = %87
  %104 = load i128, i128* %10, align 16
  store i128 %104, i128* %15, align 16
  %105 = bitcast i128* %15 to { i64, i64 }*
  %106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 16
  %108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %105, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call { i64, i64 } @f2(i64 noundef %107, i64 noundef %109, i32 noundef 66)
  %111 = bitcast i128* %16 to { i64, i64 }*
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %111, i32 0, i32 0
  %113 = extractvalue { i64, i64 } %110, 0
  store i64 %113, i64* %112, align 16
  %114 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %111, i32 0, i32 1
  %115 = extractvalue { i64, i64 } %110, 1
  store i64 %115, i64* %114, align 8
  %116 = load i128, i128* %16, align 16
  %117 = icmp ne i128 %116, -2305843009213693952
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  call void @abort() #2
  unreachable

119:                                              ; preds = %103
  store i128 -170141183460469231731687303715884105728, i128* %17, align 16
  %120 = load i128, i128* %10, align 16
  store i128 %120, i128* %18, align 16
  %121 = bitcast i128* %18 to { i64, i64 }*
  %122 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 16
  %124 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %121, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call { i64, i64 } @f3(i64 noundef %123, i64 noundef %125, i32 noundef 5)
  %127 = bitcast i128* %19 to { i64, i64 }*
  %128 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %127, i32 0, i32 0
  %129 = extractvalue { i64, i64 } %126, 0
  store i64 %129, i64* %128, align 16
  %130 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %127, i32 0, i32 1
  %131 = extractvalue { i64, i64 } %126, 1
  store i64 %131, i64* %130, align 8
  %132 = load i128, i128* %19, align 16
  %133 = icmp ne i128 %132, 10633823966279326983230456482242756608
  br i1 %133, label %134, label %135

134:                                              ; preds = %119
  call void @abort() #2
  unreachable

135:                                              ; preds = %119
  %136 = load i128, i128* %10, align 16
  store i128 %136, i128* %20, align 16
  %137 = bitcast i128* %20 to { i64, i64 }*
  %138 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 16
  %140 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %137, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call { i64, i64 } @f3(i64 noundef %139, i64 noundef %141, i32 noundef 64)
  %143 = bitcast i128* %21 to { i64, i64 }*
  %144 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %143, i32 0, i32 0
  %145 = extractvalue { i64, i64 } %142, 0
  store i64 %145, i64* %144, align 16
  %146 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %143, i32 0, i32 1
  %147 = extractvalue { i64, i64 } %142, 1
  store i64 %147, i64* %146, align 8
  %148 = load i128, i128* %21, align 16
  %149 = icmp ne i128 %148, 9223372036854775808
  br i1 %149, label %150, label %151

150:                                              ; preds = %135
  call void @abort() #2
  unreachable

151:                                              ; preds = %135
  %152 = load i128, i128* %10, align 16
  store i128 %152, i128* %22, align 16
  %153 = bitcast i128* %22 to { i64, i64 }*
  %154 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 16
  %156 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %153, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = call { i64, i64 } @f3(i64 noundef %155, i64 noundef %157, i32 noundef 66)
  %159 = bitcast i128* %23 to { i64, i64 }*
  %160 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %159, i32 0, i32 0
  %161 = extractvalue { i64, i64 } %158, 0
  store i64 %161, i64* %160, align 16
  %162 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %159, i32 0, i32 1
  %163 = extractvalue { i64, i64 } %158, 1
  store i64 %163, i64* %162, align 8
  %164 = load i128, i128* %23, align 16
  %165 = icmp ne i128 %164, 2305843009213693952
  br i1 %165, label %166, label %167

166:                                              ; preds = %151
  call void @abort() #2
  unreachable

167:                                              ; preds = %151
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

; ModuleID = './pr85582-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85582-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { i64, i64 } @f1(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = bitcast i128* %5 to { i64, i64 }*
  %7 = bitcast i128* %5 to i64*
  store i64 %0, i64* %7, align 16
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  store i64 %1, i64* %8, align 8
  %9 = load i128, i128* %5, align 16
  %10 = and i32 %2, -2
  %11 = zext i32 %10 to i128
  %12 = shl i128 %9, %11
  store i128 %12, i128* %4, align 16
  %13 = bitcast i128* %4 to { i64, i64 }*
  %.elt = bitcast i128* %4 to i64*
  %.unpack = load i64, i64* %.elt, align 16
  %14 = insertvalue { i64, i64 } undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i64 0, i32 1
  %.unpack2 = load i64, i64* %.elt1, align 8
  %15 = insertvalue { i64, i64 } %14, i64 %.unpack2, 1
  ret { i64, i64 } %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { i64, i64 } @f2(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = bitcast i128* %5 to { i64, i64 }*
  %7 = bitcast i128* %5 to i64*
  store i64 %0, i64* %7, align 16
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  store i64 %1, i64* %8, align 8
  %9 = load i128, i128* %5, align 16
  %10 = and i32 %2, -2
  %11 = zext i32 %10 to i128
  %12 = ashr i128 %9, %11
  store i128 %12, i128* %4, align 16
  %13 = bitcast i128* %4 to { i64, i64 }*
  %.elt = bitcast i128* %4 to i64*
  %.unpack = load i64, i64* %.elt, align 16
  %14 = insertvalue { i64, i64 } undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i64 0, i32 1
  %.unpack2 = load i64, i64* %.elt1, align 8
  %15 = insertvalue { i64, i64 } %14, i64 %.unpack2, 1
  ret { i64, i64 } %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { i64, i64 } @f3(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = bitcast i128* %5 to { i64, i64 }*
  %7 = bitcast i128* %5 to i64*
  store i64 %0, i64* %7, align 16
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  store i64 %1, i64* %8, align 8
  %9 = load i128, i128* %5, align 16
  %10 = and i32 %2, -2
  %11 = zext i32 %10 to i128
  %12 = lshr i128 %9, %11
  store i128 %12, i128* %4, align 16
  %13 = bitcast i128* %4 to { i64, i64 }*
  %.elt = bitcast i128* %4 to i64*
  %.unpack = load i64, i64* %.elt, align 16
  %14 = insertvalue { i64, i64 } undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i64 0, i32 1
  %.unpack2 = load i64, i64* %.elt1, align 8
  %15 = insertvalue { i64, i64 } %14, i64 %.unpack2, 1
  ret { i64, i64 } %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i128, align 16
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
  store i128 2658455991569831745807614120560689152, i128* %1, align 16
  %19 = bitcast i128* %1 to { i64, i64 }*
  %20 = bitcast i128* %1 to i64*
  %21 = load i64, i64* %20, align 16
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i64 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call { i64, i64 } @f1(i64 noundef %21, i64 noundef %23, i32 noundef 5)
  %25 = bitcast i128* %2 to { i64, i64 }*
  %26 = bitcast i128* %2 to i64*
  %27 = extractvalue { i64, i64 } %24, 0
  store i64 %27, i64* %26, align 16
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i64 0, i32 1
  %29 = extractvalue { i64, i64 } %24, 1
  store i64 %29, i64* %28, align 8
  %30 = load i128, i128* %2, align 16
  %.not = icmp eq i128 %30, 42535295865117307932921825928971026432
  br i1 %.not, label %32, label %31

31:                                               ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %0
  store i128 37037603335494959104, i128* %3, align 16
  %33 = bitcast i128* %3 to { i64, i64 }*
  %34 = bitcast i128* %3 to i64*
  %35 = load i64, i64* %34, align 16
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i64 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call { i64, i64 } @f1(i64 noundef %35, i64 noundef %37, i32 noundef 64)
  %39 = bitcast i128* %4 to { i64, i64 }*
  %40 = bitcast i128* %4 to i64*
  %41 = extractvalue { i64, i64 } %38, 0
  store i64 %41, i64* %40, align 16
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %39, i64 0, i32 1
  %43 = extractvalue { i64, i64 } %38, 1
  store i64 %43, i64* %42, align 8
  %44 = load i128, i128* %4, align 16
  %.not1 = icmp eq i128 %44, 2658455991569831745807614120560689152
  br i1 %.not1, label %46, label %45

45:                                               ; preds = %32
  call void @abort() #3
  br label %UnifiedUnreachableBlock

46:                                               ; preds = %32
  store i128 37037603335494959104, i128* %5, align 16
  %47 = bitcast i128* %5 to { i64, i64 }*
  %48 = bitcast i128* %5 to i64*
  %49 = load i64, i64* %48, align 16
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %47, i64 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call { i64, i64 } @f1(i64 noundef %49, i64 noundef %51, i32 noundef 66)
  %53 = bitcast i128* %6 to { i64, i64 }*
  %54 = bitcast i128* %6 to i64*
  %55 = extractvalue { i64, i64 } %52, 0
  store i64 %55, i64* %54, align 16
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i64 0, i32 1
  %57 = extractvalue { i64, i64 } %52, 1
  store i64 %57, i64* %56, align 8
  %58 = load i128, i128* %6, align 16
  %.not2 = icmp eq i128 %58, 10633823966279326983230456482242756608
  br i1 %.not2, label %60, label %59

59:                                               ; preds = %46
  call void @abort() #3
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %46
  store i128 -170141183460469231731687303715884105728, i128* %7, align 16
  %61 = bitcast i128* %7 to { i64, i64 }*
  %62 = bitcast i128* %7 to i64*
  %63 = load i64, i64* %62, align 16
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i64 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call { i64, i64 } @f2(i64 noundef %63, i64 noundef %65, i32 noundef 5)
  %67 = bitcast i128* %8 to { i64, i64 }*
  %68 = bitcast i128* %8 to i64*
  %69 = extractvalue { i64, i64 } %66, 0
  store i64 %69, i64* %68, align 16
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i64 0, i32 1
  %71 = extractvalue { i64, i64 } %66, 1
  store i64 %71, i64* %70, align 8
  %72 = load i128, i128* %8, align 16
  %.not3 = icmp eq i128 %72, -10633823966279326983230456482242756608
  br i1 %.not3, label %74, label %73

73:                                               ; preds = %60
  call void @abort() #3
  br label %UnifiedUnreachableBlock

74:                                               ; preds = %60
  store i128 -170141183460469231731687303715884105728, i128* %9, align 16
  %75 = bitcast i128* %9 to { i64, i64 }*
  %76 = bitcast i128* %9 to i64*
  %77 = load i64, i64* %76, align 16
  %78 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i64 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call { i64, i64 } @f2(i64 noundef %77, i64 noundef %79, i32 noundef 64)
  %81 = bitcast i128* %10 to { i64, i64 }*
  %82 = bitcast i128* %10 to i64*
  %83 = extractvalue { i64, i64 } %80, 0
  store i64 %83, i64* %82, align 16
  %84 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %81, i64 0, i32 1
  %85 = extractvalue { i64, i64 } %80, 1
  store i64 %85, i64* %84, align 8
  %86 = load i128, i128* %10, align 16
  %.not4 = icmp eq i128 %86, -9223372036854775808
  br i1 %.not4, label %88, label %87

87:                                               ; preds = %74
  call void @abort() #3
  br label %UnifiedUnreachableBlock

88:                                               ; preds = %74
  store i128 -170141183460469231731687303715884105728, i128* %11, align 16
  %89 = bitcast i128* %11 to { i64, i64 }*
  %90 = bitcast i128* %11 to i64*
  %91 = load i64, i64* %90, align 16
  %92 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %89, i64 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call { i64, i64 } @f2(i64 noundef %91, i64 noundef %93, i32 noundef 66)
  %95 = bitcast i128* %12 to { i64, i64 }*
  %96 = bitcast i128* %12 to i64*
  %97 = extractvalue { i64, i64 } %94, 0
  store i64 %97, i64* %96, align 16
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %95, i64 0, i32 1
  %99 = extractvalue { i64, i64 } %94, 1
  store i64 %99, i64* %98, align 8
  %100 = load i128, i128* %12, align 16
  %.not5 = icmp eq i128 %100, -2305843009213693952
  br i1 %.not5, label %102, label %101

101:                                              ; preds = %88
  call void @abort() #3
  br label %UnifiedUnreachableBlock

102:                                              ; preds = %88
  store i128 -170141183460469231731687303715884105728, i128* %13, align 16
  %103 = bitcast i128* %13 to { i64, i64 }*
  %104 = bitcast i128* %13 to i64*
  %105 = load i64, i64* %104, align 16
  %106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %103, i64 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call { i64, i64 } @f3(i64 noundef %105, i64 noundef %107, i32 noundef 5)
  %109 = bitcast i128* %14 to { i64, i64 }*
  %110 = bitcast i128* %14 to i64*
  %111 = extractvalue { i64, i64 } %108, 0
  store i64 %111, i64* %110, align 16
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i64 0, i32 1
  %113 = extractvalue { i64, i64 } %108, 1
  store i64 %113, i64* %112, align 8
  %114 = load i128, i128* %14, align 16
  %.not6 = icmp eq i128 %114, 10633823966279326983230456482242756608
  br i1 %.not6, label %116, label %115

115:                                              ; preds = %102
  call void @abort() #3
  br label %UnifiedUnreachableBlock

116:                                              ; preds = %102
  store i128 -170141183460469231731687303715884105728, i128* %15, align 16
  %117 = bitcast i128* %15 to { i64, i64 }*
  %118 = bitcast i128* %15 to i64*
  %119 = load i64, i64* %118, align 16
  %120 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %117, i64 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call { i64, i64 } @f3(i64 noundef %119, i64 noundef %121, i32 noundef 64)
  %123 = bitcast i128* %16 to { i64, i64 }*
  %124 = bitcast i128* %16 to i64*
  %125 = extractvalue { i64, i64 } %122, 0
  store i64 %125, i64* %124, align 16
  %126 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %123, i64 0, i32 1
  %127 = extractvalue { i64, i64 } %122, 1
  store i64 %127, i64* %126, align 8
  %128 = load i128, i128* %16, align 16
  %.not7 = icmp eq i128 %128, 9223372036854775808
  br i1 %.not7, label %130, label %129

129:                                              ; preds = %116
  call void @abort() #3
  br label %UnifiedUnreachableBlock

130:                                              ; preds = %116
  store i128 -170141183460469231731687303715884105728, i128* %17, align 16
  %131 = bitcast i128* %17 to { i64, i64 }*
  %132 = bitcast i128* %17 to i64*
  %133 = load i64, i64* %132, align 16
  %134 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %131, i64 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call { i64, i64 } @f3(i64 noundef %133, i64 noundef %135, i32 noundef 66)
  %137 = bitcast i128* %18 to { i64, i64 }*
  %138 = bitcast i128* %18 to i64*
  %139 = extractvalue { i64, i64 } %136, 0
  store i64 %139, i64* %138, align 16
  %140 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %137, i64 0, i32 1
  %141 = extractvalue { i64, i64 } %136, 1
  store i64 %141, i64* %140, align 8
  %142 = load i128, i128* %18, align 16
  %.not8 = icmp eq i128 %142, 2305843009213693952
  br i1 %.not8, label %144, label %143

143:                                              ; preds = %130
  call void @abort() #3
  br label %UnifiedUnreachableBlock

144:                                              ; preds = %130
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %143, %129, %115, %101, %87, %73, %59, %45, %31
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

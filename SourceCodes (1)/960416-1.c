; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960416-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960416-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.t_le = type { %struct.anon }
%struct.anon = type { i64, i64 }
%union.t_be = type { %struct.anon.0 }
%struct.anon.0 = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f_le(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %union.t_le, align 8
  %6 = alloca %union.t_le, align 8
  %7 = alloca %union.t_le, align 8
  %8 = alloca %union.t_le, align 8
  %9 = alloca %union.t_le, align 8
  %10 = alloca %union.t_le, align 8
  %11 = alloca %union.t_le, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = bitcast %union.t_le* %5 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  store i64 %0, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  store i64 %1, i64* %17, align 8
  %18 = bitcast %union.t_le* %6 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %2, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %3, i64* %20, align 8
  store i32 0, i32* %14, align 4
  %21 = bitcast %union.t_le* %5 to %struct.anon*
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = bitcast %union.t_le* %5 to %struct.anon*
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %23, %26
  store i64 %27, i64* %12, align 8
  %28 = bitcast %union.t_le* %6 to %struct.anon*
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = bitcast %union.t_le* %6 to %struct.anon*
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = bitcast %union.t_le* %6 to %struct.anon*
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %4
  %41 = load i64, i64* %13, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = xor i32 %43, -1
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %40, %4
  %46 = bitcast %union.t_le* %5 to %struct.anon*
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = bitcast %union.t_le* %6 to %struct.anon*
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = mul i64 %48, %51
  %53 = bitcast %union.t_le* %9 to i64*
  store i64 %52, i64* %53, align 8
  %54 = bitcast %union.t_le* %5 to %struct.anon*
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = bitcast %union.t_le* %6 to %struct.anon*
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = mul i64 %56, %59
  %61 = bitcast %union.t_le* %8 to i64*
  store i64 %60, i64* %61, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = mul i64 %62, %63
  %65 = bitcast %union.t_le* %10 to i64*
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = bitcast %union.t_le* %10 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = xor i64 %69, %67
  store i64 %70, i64* %68, align 8
  %71 = bitcast %union.t_le* %8 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = bitcast %union.t_le* %8 to %struct.anon*
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %72, %75
  %77 = bitcast %union.t_le* %9 to %struct.anon*
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %76, %79
  %81 = bitcast %union.t_le* %10 to %struct.anon*
  %82 = getelementptr inbounds %struct.anon, %struct.anon* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %80, %83
  %85 = bitcast %union.t_le* %7 to i64*
  store i64 %84, i64* %85, align 8
  %86 = bitcast %union.t_le* %9 to %struct.anon*
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = bitcast %union.t_le* %8 to %struct.anon*
  %90 = getelementptr inbounds %struct.anon, %struct.anon* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %88, %91
  %93 = bitcast %union.t_le* %9 to %struct.anon*
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %92, %95
  %97 = bitcast %union.t_le* %10 to %struct.anon*
  %98 = getelementptr inbounds %struct.anon, %struct.anon* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %96, %99
  %101 = bitcast %union.t_le* %11 to i64*
  store i64 %100, i64* %101, align 8
  %102 = bitcast %union.t_le* %7 to %struct.anon*
  %103 = getelementptr inbounds %struct.anon, %struct.anon* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = bitcast %union.t_le* %11 to %struct.anon*
  %106 = getelementptr inbounds %struct.anon, %struct.anon* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %104, %107
  %109 = trunc i64 %108 to i32
  ret i32 %109
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f_be(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %union.t_be, align 8
  %6 = alloca %union.t_be, align 8
  %7 = alloca %union.t_be, align 8
  %8 = alloca %union.t_be, align 8
  %9 = alloca %union.t_be, align 8
  %10 = alloca %union.t_be, align 8
  %11 = alloca %union.t_be, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = bitcast %union.t_be* %5 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  store i64 %0, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  store i64 %1, i64* %17, align 8
  %18 = bitcast %union.t_be* %6 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %2, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %3, i64* %20, align 8
  store i32 0, i32* %14, align 4
  %21 = bitcast %union.t_be* %5 to %struct.anon.0*
  %22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = bitcast %union.t_be* %5 to %struct.anon.0*
  %25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %23, %26
  store i64 %27, i64* %12, align 8
  %28 = bitcast %union.t_be* %6 to %struct.anon.0*
  %29 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = bitcast %union.t_be* %6 to %struct.anon.0*
  %32 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = bitcast %union.t_be* %6 to %struct.anon.0*
  %37 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %4
  %41 = load i64, i64* %13, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = xor i32 %43, -1
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %40, %4
  %46 = bitcast %union.t_be* %5 to %struct.anon.0*
  %47 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = bitcast %union.t_be* %6 to %struct.anon.0*
  %50 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = mul i64 %48, %51
  %53 = bitcast %union.t_be* %9 to i64*
  store i64 %52, i64* %53, align 8
  %54 = bitcast %union.t_be* %5 to %struct.anon.0*
  %55 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = bitcast %union.t_be* %6 to %struct.anon.0*
  %58 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = mul i64 %56, %59
  %61 = bitcast %union.t_be* %8 to i64*
  store i64 %60, i64* %61, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = mul i64 %62, %63
  %65 = bitcast %union.t_be* %10 to i64*
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = bitcast %union.t_be* %10 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = xor i64 %69, %67
  store i64 %70, i64* %68, align 8
  %71 = bitcast %union.t_be* %8 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = bitcast %union.t_be* %8 to %struct.anon.0*
  %74 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %72, %75
  %77 = bitcast %union.t_be* %9 to %struct.anon.0*
  %78 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %76, %79
  %81 = bitcast %union.t_be* %10 to %struct.anon.0*
  %82 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %80, %83
  %85 = bitcast %union.t_be* %7 to i64*
  store i64 %84, i64* %85, align 8
  %86 = bitcast %union.t_be* %9 to %struct.anon.0*
  %87 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = bitcast %union.t_be* %8 to %struct.anon.0*
  %90 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %88, %91
  %93 = bitcast %union.t_be* %9 to %struct.anon.0*
  %94 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %92, %95
  %97 = bitcast %union.t_be* %10 to %struct.anon.0*
  %98 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %96, %99
  %101 = bitcast %union.t_be* %11 to i64*
  store i64 %100, i64* %101, align 8
  %102 = bitcast %union.t_be* %7 to %struct.anon.0*
  %103 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = bitcast %union.t_be* %11 to %struct.anon.0*
  %106 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %104, %107
  %109 = trunc i64 %108 to i32
  ret i32 %109
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.t_be, align 8
  %3 = alloca %union.t_be, align 8
  %4 = alloca %union.t_be, align 8
  %5 = alloca %union.t_le, align 8
  %6 = alloca %union.t_le, align 8
  store i32 0, i32* %1, align 4
  %7 = bitcast %union.t_be* %2 to %struct.anon.0*
  %8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %7, i32 0, i32 0
  store i64 268435456, i64* %8, align 8
  %9 = bitcast %union.t_be* %2 to %struct.anon.0*
  %10 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %9, i32 0, i32 1
  store i64 3758096384, i64* %10, align 8
  %11 = bitcast %union.t_be* %2 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 1152921508364943360
  br i1 %13, label %14, label %30

14:                                               ; preds = %0
  %15 = bitcast %union.t_be* %3 to i64*
  store i64 4294967296, i64* %15, align 8
  %16 = bitcast %union.t_be* %4 to i64*
  store i64 4294967296, i64* %16, align 8
  %17 = bitcast %union.t_be* %3 to { i64, i64 }*
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = bitcast %union.t_be* %4 to { i64, i64 }*
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @f_be(i64 %19, i64 %21, i64 %24, i64 %26)
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  call void @abort() #2
  unreachable

30:                                               ; preds = %14, %0
  %31 = bitcast %union.t_be* %2 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, -2305843008945258496
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = bitcast %union.t_le* %5 to i64*
  store i64 4294967296, i64* %35, align 8
  %36 = bitcast %union.t_le* %6 to i64*
  store i64 4294967296, i64* %36, align 8
  %37 = bitcast %union.t_le* %5 to { i64, i64 }*
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %37, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = bitcast %union.t_le* %6 to { i64, i64 }*
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %42, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @f_le(i64 %39, i64 %41, i64 %44, i64 %46)
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  call void @abort() #2
  unreachable

50:                                               ; preds = %34, %30
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

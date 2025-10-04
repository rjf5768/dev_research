; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20190820-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20190820-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printf_spec = type { i64 }

@hex_asc_upper = dso_local global [16 x i8] zeroinitializer, align 16
@decpair = dso_local global [100 x i16] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.printf_spec, align 1
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %2, i32 0, i32 0
  %5 = load i64, i64* %4, align 1
  %6 = call i8* @pointer_string(i8* noundef null, i8* noundef null, i8* noundef null, i64 %5)
  store i8* %6, i8** %3, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @pointer_string(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 %3) #0 {
  %5 = alloca %struct.printf_spec, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %5, i32 0, i32 0
  store i64 %3, i64* %9, align 1
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  %10 = bitcast %struct.printf_spec* %5 to i64*
  %11 = load i64, i64* %10, align 1
  %12 = and i64 %11, -280375465082881
  %13 = or i64 %12, 17592186044416
  store i64 %13, i64* %10, align 1
  %14 = bitcast %struct.printf_spec* %5 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = and i64 %15, -1095216660481
  %17 = or i64 %16, 0
  store i64 %17, i64* %14, align 1
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %5, i32 0, i32 0
  %21 = load i64, i64* %20, align 1
  %22 = call i8* @number(i8* noundef %18, i8* noundef %19, i64 noundef 100, i64 %21)
  ret i8* %22
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @number(i8* noundef %0, i8* noundef %1, i64 noundef %2, i64 %3) #0 {
  %5 = alloca %struct.printf_spec, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [24 x i8], align 2
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %5, i32 0, i32 0
  store i64 %3, i64* %19, align 1
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  %20 = bitcast %struct.printf_spec* %5 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = lshr i64 %21, 32
  %23 = and i64 %22, 255
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 64
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %4
  %28 = bitcast %struct.printf_spec* %5 to i64*
  %29 = load i64, i64* %28, align 1
  %30 = lshr i64 %29, 40
  %31 = and i64 %30, 255
  %32 = trunc i64 %31 to i32
  %33 = icmp ne i32 %32, 10
  br label %34

34:                                               ; preds = %27, %4
  %35 = phi i1 [ false, %4 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %12, align 4
  %37 = load i64, i64* %8, align 8
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %14, align 1
  %40 = bitcast %struct.printf_spec* %5 to i64*
  %41 = load i64, i64* %40, align 1
  %42 = shl i64 %41, 32
  %43 = ashr i64 %42, 40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %15, align 4
  %45 = bitcast %struct.printf_spec* %5 to i64*
  %46 = load i64, i64* %45, align 1
  %47 = ashr i64 %46, 48
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %16, align 4
  store i32 0, i32* %13, align 4
  %49 = load i64, i64* %8, align 8
  %50 = bitcast %struct.printf_spec* %5 to i64*
  %51 = load i64, i64* %50, align 1
  %52 = lshr i64 %51, 40
  %53 = and i64 %52, 255
  %54 = trunc i64 %53 to i32
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %49, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %34
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* @hex_asc_upper, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8, i8* %11, align 1
  %63 = sext i8 %62 to i32
  %64 = or i32 %61, %63
  %65 = trunc i32 %64 to i8
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds [24 x i8], [24 x i8]* %9, i64 0, i64 %68
  store i8 %65, i8* %69, align 1
  br label %129

70:                                               ; preds = %34
  %71 = bitcast %struct.printf_spec* %5 to i64*
  %72 = load i64, i64* %71, align 1
  %73 = lshr i64 %72, 40
  %74 = and i64 %73, 255
  %75 = trunc i64 %74 to i32
  %76 = icmp ne i32 %75, 10
  br i1 %76, label %77, label %119

77:                                               ; preds = %70
  %78 = bitcast %struct.printf_spec* %5 to i64*
  %79 = load i64, i64* %78, align 1
  %80 = lshr i64 %79, 40
  %81 = and i64 %80, 255
  %82 = trunc i64 %81 to i32
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %17, align 4
  store i32 3, i32* %18, align 4
  %84 = bitcast %struct.printf_spec* %5 to i64*
  %85 = load i64, i64* %84, align 1
  %86 = lshr i64 %85, 40
  %87 = and i64 %86, 255
  %88 = trunc i64 %87 to i32
  %89 = icmp eq i32 %88, 16
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  store i32 4, i32* %18, align 4
  br label %92

91:                                               ; preds = %77
  call void @abort() #2
  unreachable

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %115, %92
  %94 = load i64, i64* %8, align 8
  %95 = trunc i64 %94 to i8
  %96 = zext i8 %95 to i32
  %97 = load i32, i32* %17, align 4
  %98 = and i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [16 x i8], [16 x i8]* @hex_asc_upper, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = load i8, i8* %11, align 1
  %104 = sext i8 %103 to i32
  %105 = or i32 %102, %104
  %106 = trunc i32 %105 to i8
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds [24 x i8], [24 x i8]* %9, i64 0, i64 %109
  store i8 %106, i8* %110, align 1
  %111 = load i32, i32* %18, align 4
  %112 = load i64, i64* %8, align 8
  %113 = zext i32 %111 to i64
  %114 = lshr i64 %112, %113
  store i64 %114, i64* %8, align 8
  br label %115

115:                                              ; preds = %93
  %116 = load i64, i64* %8, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %93, label %118, !llvm.loop !4

118:                                              ; preds = %115
  br label %128

119:                                              ; preds = %70
  %120 = getelementptr inbounds [24 x i8], [24 x i8]* %9, i64 0, i64 0
  %121 = load i64, i64* %8, align 8
  %122 = call i8* @put_dec(i8* noundef %120, i64 noundef %121)
  %123 = getelementptr inbounds [24 x i8], [24 x i8]* %9, i64 0, i64 0
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %119, %118
  br label %129

129:                                              ; preds = %128, %57
  %130 = load i8*, i8** %6, align 8
  ret i8* %130
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @put_dec(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = trunc i64 %10 to i32
  %12 = lshr i32 %11, 16
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* %4, align 8
  %14 = lshr i64 %13, 32
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, 65535
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %9, align 4
  %19 = lshr i32 %18, 16
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul i32 656, %20
  %22 = load i32, i32* %6, align 4
  %23 = mul i32 7296, %22
  %24 = add i32 %21, %23
  %25 = load i32, i32* %7, align 4
  %26 = mul i32 5536, %25
  %27 = add i32 %24, %26
  %28 = load i64, i64* %4, align 8
  %29 = trunc i64 %28 to i32
  %30 = and i32 %29, 65535
  %31 = add i32 %27, %30
  store i32 %31, i32* %8, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @put_dec_helper4(i8* noundef %32, i32 noundef %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul i32 7671, %35
  %37 = load i32, i32* %6, align 4
  %38 = mul i32 9496, %37
  %39 = add i32 %36, %38
  %40 = load i32, i32* %7, align 4
  %41 = mul i32 6, %40
  %42 = add i32 %39, %41
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @put_dec_helper4(i8* noundef %46, i32 noundef %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %5, align 4
  %50 = mul i32 4749, %49
  %51 = load i32, i32* %6, align 4
  %52 = mul i32 42, %51
  %53 = add i32 %50, %52
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @put_dec_helper4(i8* noundef %57, i32 noundef %58)
  store i32 %59, i32* %8, align 4
  %60 = load i8*, i8** %3, align 8
  ret i8* %60
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @put_dec_helper4(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = zext i32 %6 to i64
  %8 = mul i64 %7, 879609303
  %9 = lshr i64 %8, 43
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = mul i32 %13, 10000
  %15 = sub i32 %12, %14
  call void @put_dec_full4(i8* noundef %11, i32 noundef %15)
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_dec_full4(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = mul i32 %6, 5243
  %8 = lshr i32 %7, 19
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = mul i32 100, %10
  %12 = sub i32 %9, %11
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [100 x i16], [100 x i16]* @decpair, i64 0, i64 %13
  %15 = load i16, i16* %14, align 2
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i8* %16 to i16*
  store i16 %15, i16* %17, align 2
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  store i8* %19, i8** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [100 x i16], [100 x i16]* @decpair, i64 0, i64 %21
  %23 = load i16, i16* %22, align 2
  %24 = load i8*, i8** %3, align 8
  %25 = bitcast i8* %24 to i16*
  store i16 %23, i16* %25, align 2
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}

; ModuleID = './20190820-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20190820-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printf_spec = type { i64 }

@hex_asc_upper = dso_local global [16 x i8] zeroinitializer, align 16
@decpair = dso_local global [100 x i16] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.printf_spec, align 8
  %2 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %1, i64 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = call i8* @pointer_string(i8* noundef null, i8* noundef null, i8* noundef null, i64 %3)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @pointer_string(i8* noundef returned %0, i8* nocapture noundef readnone %1, i8* nocapture noundef readnone %2, i64 %3) #0 {
  %5 = and i64 %3, -281470681743361
  %6 = or i64 %5, 17592186044416
  %7 = call i8* @number(i8* noundef %0, i8* noundef %1, i64 noundef 100, i64 %6)
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @number(i8* noundef readnone returned %0, i8* nocapture noundef readnone %1, i64 noundef %2, i64 %3) #0 {
  %5 = alloca %struct.printf_spec, align 8
  %6 = alloca [24 x i8], align 2
  %7 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %5, i64 0, i32 0
  store i64 %3, i64* %7, align 8
  %8 = and i64 %3, 274877906944
  %.not = icmp eq i64 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %5, i64 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = lshr i64 %12, 40
  %14 = and i64 %13, 255
  %15 = icmp ugt i64 %14, %2
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* @hex_asc_upper, i64 0, i64 %2
  %18 = load i8, i8* %17, align 1
  %19 = getelementptr inbounds [24 x i8], [24 x i8]* %6, i64 0, i64 0
  store i8 %18, i8* %19, align 2
  br label %50

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %5, i64 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %22, 280375465082880
  %.not2 = icmp eq i64 %23, 10995116277760
  br i1 %.not2, label %46, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %5, i64 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = lshr i64 %26, 40
  %28 = and i64 %27, 255
  %29 = add nuw nsw i64 %28, 4294967295
  %30 = and i64 %26, 280375465082880
  %31 = icmp eq i64 %30, 17592186044416
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %34

33:                                               ; preds = %24
  call void @abort() #3
  unreachable

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %42, %34
  %.01 = phi i64 [ %2, %34 ], [ %43, %42 ]
  %.0 = phi i32 [ 0, %34 ], [ %44, %42 ]
  %36 = and i64 %.01, 255
  %37 = and i64 %36, %29
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* @hex_asc_upper, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i32 %.0 to i64
  %41 = getelementptr inbounds [24 x i8], [24 x i8]* %6, i64 0, i64 %40
  store i8 %39, i8* %41, align 1
  br label %42

42:                                               ; preds = %35
  %43 = lshr i64 %.01, 4
  %44 = add nuw nsw i32 %.0, 1
  %.not3 = icmp ult i64 %.01, 16
  br i1 %.not3, label %45, label %35, !llvm.loop !4

45:                                               ; preds = %42
  br label %49

46:                                               ; preds = %20
  %47 = getelementptr inbounds [24 x i8], [24 x i8]* %6, i64 0, i64 0
  %48 = call i8* @put_dec(i8* noundef nonnull %47, i64 noundef %2)
  br label %49

49:                                               ; preds = %46, %45
  br label %50

50:                                               ; preds = %49, %16
  ret i8* %0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i8* @put_dec(i8* noundef returned writeonly %0, i64 noundef %1) #2 {
  %3 = trunc i64 %1 to i32
  %4 = lshr i32 %3, 16
  %5 = lshr i64 %1, 32
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = lshr i32 %6, 16
  %9 = mul nuw nsw i32 %8, 656
  %10 = mul nuw nsw i32 %7, 7296
  %11 = add nuw nsw i32 %9, %10
  %12 = mul nuw nsw i32 %4, 5536
  %13 = add nuw nsw i32 %11, %12
  %14 = trunc i64 %1 to i32
  %15 = and i32 %14, 65535
  %16 = add nuw i32 %13, %15
  %17 = call i32 @put_dec_helper4(i8* noundef %0, i32 noundef %16)
  %18 = mul nuw nsw i32 %8, 7671
  %19 = mul nuw nsw i32 %7, 9496
  %20 = add nuw nsw i32 %18, %19
  %21 = mul nuw nsw i32 %4, 6
  %22 = add nuw i32 %20, %21
  %23 = add i32 %17, %22
  %24 = getelementptr inbounds i8, i8* %0, i64 4
  %25 = call i32 @put_dec_helper4(i8* noundef nonnull %24, i32 noundef %23)
  %26 = mul nuw nsw i32 %8, 4749
  %27 = mul nuw nsw i32 %7, 42
  %28 = add nuw nsw i32 %26, %27
  %29 = add i32 %25, %28
  %30 = getelementptr inbounds i8, i8* %0, i64 8
  %31 = call i32 @put_dec_helper4(i8* noundef nonnull %30, i32 noundef %29)
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @put_dec_helper4(i8* nocapture noundef writeonly %0, i32 noundef %1) #2 {
  %3 = zext i32 %1 to i64
  %4 = mul nuw nsw i64 %3, 879609303
  %5 = lshr i64 %4, 43
  %6 = trunc i64 %5 to i32
  %.neg = mul i32 %6, -10000
  %7 = add i32 %.neg, %1
  call void @put_dec_full4(i8* noundef %0, i32 noundef %7)
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @put_dec_full4(i8* nocapture noundef writeonly %0, i32 noundef %1) #2 {
  %3 = mul i32 %1, 5243
  %4 = lshr i32 %3, 19
  %.neg = mul nsw i32 %4, -100
  %5 = add i32 %.neg, %1
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [100 x i16], [100 x i16]* @decpair, i64 0, i64 %6
  %8 = load i16, i16* %7, align 2
  %9 = bitcast i8* %0 to i16*
  store i16 %8, i16* %9, align 2
  %10 = getelementptr inbounds i8, i8* %0, i64 2
  %11 = zext i32 %4 to i64
  %12 = getelementptr inbounds [100 x i16], [100 x i16]* @decpair, i64 0, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = bitcast i8* %10 to i16*
  store i16 %13, i16* %14, align 2
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}

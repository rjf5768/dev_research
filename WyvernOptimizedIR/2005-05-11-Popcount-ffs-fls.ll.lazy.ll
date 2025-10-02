; ModuleID = './2005-05-11-Popcount-ffs-fls.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2005-05-11-Popcount-ffs-fls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nlz10b.table = internal global [64 x i8] c" \14\13cc\12c\07\0A\11cc\0Ec\06cc\09c\10cc\01\1Ac\0Dcc\18\05ccc\15c\08\0Bc\0Fcccc\02\1B\00\19c\16c\0Ccc\03\1Cc\17c\04\1Dcc\1E\1F", align 16
@ntz8.table = internal global [64 x i8] c" \00\01\0C\02\06c\0D\03c\07cccc\0E\0A\04cc\08cc\19ccccc\15\1B\0F\1F\0B\05ccccc\09cc\18cc\14\1A\1Ecccc\17c\13\1Dc\16\12\1C\11\10c", align 16
@i = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"LLVM: n: %d, clz(n): %d, popcount(n): %d, ctz(n): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"REF : n: %d, clz(n): %d, popcount(n): %d, ctz(n): %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"  ***  \0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"LLVM: n: %lld, clz(n): %d, popcount(n): %d, ctz(n): %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"REF LO BITS : n: %lld, clz(n): %d, popcount(n): %d, ctz(n): %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"FFS: 0:%d, 1:%d, 2:%d, 7:%d, 1024:%d, 1234:%d i:%d, l:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"__builtin_ffs: 0:%d, 1:%d, 2:%d, 7:%d, 1024:%d, 1234:%d i:%d l:%d\0A\00", align 1
@str = private unnamed_addr constant [8 x i8] c"  ***  \00", align 1
@str.1 = private unnamed_addr constant [8 x i8] c"  ***  \00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @nlz10b(i32 noundef %0) #0 {
  %2 = lshr i32 %0, 1
  %3 = or i32 %2, %0
  %4 = lshr i32 %3, 2
  %5 = or i32 %3, %4
  %6 = lshr i32 %5, 4
  %7 = or i32 %5, %6
  %8 = lshr i32 %7, 8
  %9 = or i32 %7, %8
  %10 = lshr i32 %9, 16
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = mul i32 %12, -42972673
  %14 = lshr i32 %13, 26
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* @nlz10b.table, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @nlzll(i64 noundef %0) #0 {
  %2 = icmp ult i64 %0, 4294967296
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = trunc i64 %0 to i32
  %5 = call i32 @nlz10b(i32 noundef %4)
  %6 = add nsw i32 %5, 32
  br label %11

7:                                                ; preds = %1
  %8 = lshr i64 %0, 32
  %9 = trunc i64 %8 to i32
  %10 = call i32 @nlz10b(i32 noundef %9)
  br label %11

11:                                               ; preds = %7, %3
  %.0 = phi i32 [ %6, %3 ], [ %10, %7 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @pop(i32 noundef %0) #1 {
  %2 = lshr i32 %0, 1
  %3 = and i32 %2, 1431655765
  %4 = sub i32 %0, %3
  %5 = and i32 %4, 858993459
  %6 = lshr i32 %4, 2
  %7 = and i32 %6, 858993459
  %8 = add nuw nsw i32 %5, %7
  %9 = lshr i32 %8, 4
  %10 = add nuw nsw i32 %8, %9
  %11 = and i32 %10, 252645135
  %12 = mul i32 %11, 16843009
  %13 = lshr i32 %12, 24
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @popll(i64 noundef %0) #1 {
  %2 = trunc i64 %0 to i32
  %3 = call i32 @pop(i32 noundef %2)
  %4 = lshr i64 %0, 32
  %5 = trunc i64 %4 to i32
  %6 = call i32 @pop(i32 noundef %5)
  %7 = add nsw i32 %3, %6
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @ntz8(i32 noundef %0) #0 {
  %2 = sub i32 0, %0
  %3 = and i32 %2, %0
  %4 = mul i32 %3, 72416175
  %5 = lshr i32 %4, 26
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* @ntz8.table, i64 0, i64 %6
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  br label %1

1:                                                ; preds = %16, %0
  %storemerge = phi i32 [ 10, %0 ], [ %18, %16 ]
  store i32 %storemerge, i32* @i, align 4
  %2 = icmp slt i32 %storemerge, 139045193
  br i1 %2, label %3, label %19

3:                                                ; preds = %1
  %4 = load i32, i32* @i, align 4
  %5 = call i32 @llvm.ctlz.i32(i32 %4, i1 true), !range !4
  %6 = call i32 @llvm.ctpop.i32(i32 %4), !range !4
  %7 = call i32 @llvm.cttz.i32(i32 %4, i1 true), !range !4
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #7
  %9 = load i32, i32* @i, align 4
  %10 = call i32 @nlz10b(i32 noundef %9)
  %11 = call i32 @pop(i32 noundef %9)
  %12 = call i32 @ntz8(i32 noundef %9)
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) #7
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str.1, i64 0, i64 0))
  %14 = load i32, i32* @i, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @i, align 4
  br label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @i, align 4
  %18 = mul nsw i32 %17, -3
  br label %1, !llvm.loop !5

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %35, %19
  %.0 = phi i64 [ -10000, %19 ], [ %37, %35 ]
  %21 = icmp slt i64 %.0, 1390451930000
  br i1 %21, label %22, label %38

22:                                               ; preds = %20
  %23 = call i64 @llvm.ctlz.i64(i64 %.0, i1 true), !range !7
  %24 = trunc i64 %23 to i32
  %25 = call i64 @llvm.ctpop.i64(i64 %.0), !range !7
  %26 = trunc i64 %25 to i32
  %27 = trunc i64 %.0 to i32
  %28 = call i32 @llvm.cttz.i32(i32 %27, i1 true), !range !4
  %29 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 noundef %.0, i32 noundef %24, i32 noundef %26, i32 noundef %28) #7
  %30 = call i32 @nlzll(i64 noundef %.0)
  %31 = call i32 @popll(i64 noundef %.0)
  %32 = trunc i64 %.0 to i32
  %33 = call i32 @ntz8(i32 noundef %32)
  %34 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i64 noundef %.0, i32 noundef %30, i32 noundef %31, i32 noundef %33) #7
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %22
  %36 = mul i64 %.0, -3
  %37 = add i64 %36, -3
  br label %20, !llvm.loop !8

38:                                               ; preds = %20
  %39 = load i32, i32* @i, align 4
  %cttz = call i32 @llvm.cttz.i32(i32 %39, i1 true), !range !4
  %40 = add nuw nsw i32 %cttz, 1
  %.not = icmp eq i32 %39, 0
  %41 = select i1 %.not, i32 0, i32 %40
  %cttz1 = call i64 @llvm.cttz.i64(i64 %.0, i1 true), !range !7
  %42 = trunc i64 %cttz1 to i32
  %43 = add nuw nsw i32 %42, 1
  %44 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 11, i32 noundef 2, i32 noundef %41, i32 noundef %43) #7
  %45 = load i32, i32* @i, align 4
  %46 = call i32 @llvm.cttz.i32(i32 %45, i1 true), !range !4
  %47 = add nuw nsw i32 %46, 1
  %48 = icmp eq i32 %45, 0
  %49 = select i1 %48, i32 0, i32 %47
  %50 = call i64 @llvm.cttz.i64(i64 %.0, i1 true), !range !7
  %51 = trunc i64 %50 to i32
  %52 = add nuw nsw i32 %51, 1
  %53 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 11, i32 noundef 2, i32 noundef %49, i32 noundef %52) #7
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32 @ffs(i32 noundef) #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32 @ffsl(i64 noundef) #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i32 0, i32 33}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i64 0, i64 65}
!8 = distinct !{!8, !6}

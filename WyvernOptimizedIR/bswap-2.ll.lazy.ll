; ModuleID = './bswap-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bswap-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bf_or_uint32 = type { %struct.bitfield }
%struct.bitfield = type { i32 }
%struct.ok = type { i8, i8, i8, i8 }

@__const.main.cin = private unnamed_addr constant [4 x i8] c"\83\85\87\89", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @partial_read_le32(i32 %0) #0 {
  %2 = and i32 %0, 2139062143
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @partial_read_be32(i32 %0) #0 {
  %2 = alloca %union.bf_or_uint32, align 4
  %3 = getelementptr inbounds %union.bf_or_uint32, %union.bf_or_uint32* %2, i64 0, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = lshr i32 %0, 24
  %5 = and i32 %4, 127
  %6 = lshr i32 %0, 8
  %7 = and i32 %6, 32512
  %8 = or i32 %5, %7
  %9 = getelementptr inbounds %union.bf_or_uint32, %union.bf_or_uint32* %2, i64 0, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 8
  %12 = and i32 %11, 8323072
  %13 = or i32 %8, %12
  %14 = shl i32 %10, 24
  %15 = and i32 %14, 2130706432
  %16 = or i32 %13, %15
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @fake_read_le32(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1) #1 {
  %3 = load i8, i8* %0, align 1
  %4 = getelementptr inbounds i8, i8* %0, i64 1
  %5 = load i8, i8* %4, align 1
  store i8 1, i8* %1, align 1
  %6 = getelementptr inbounds i8, i8* %0, i64 2
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds i8, i8* %0, i64 3
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %3 to i32
  %11 = zext i8 %5 to i32
  %12 = shl nuw nsw i32 %11, 8
  %13 = or i32 %12, %10
  %14 = zext i8 %7 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or i32 %13, %15
  %17 = zext i8 %9 to i32
  %18 = shl nuw i32 %17, 24
  %19 = or i32 %16, %18
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @fake_read_be32(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1) #1 {
  %3 = load i8, i8* %0, align 1
  %4 = getelementptr inbounds i8, i8* %0, i64 1
  %5 = load i8, i8* %4, align 1
  store i8 1, i8* %1, align 1
  %6 = getelementptr inbounds i8, i8* %0, i64 2
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds i8, i8* %0, i64 3
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = zext i8 %7 to i32
  %12 = shl nuw nsw i32 %11, 8
  %13 = or i32 %12, %10
  %14 = zext i8 %5 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or i32 %13, %15
  %17 = zext i8 %3 to i32
  %18 = shl nuw i32 %17, 24
  %19 = or i32 %16, %18
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @incorrect_read_le32(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1) #1 {
  %3 = load i8, i8* %0, align 1
  %4 = getelementptr inbounds i8, i8* %0, i64 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds i8, i8* %0, i64 2
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds i8, i8* %0, i64 3
  %9 = load i8, i8* %8, align 1
  store i8 1, i8* %1, align 1
  %10 = zext i8 %3 to i32
  %11 = zext i8 %5 to i32
  %12 = shl nuw nsw i32 %11, 8
  %13 = or i32 %12, %10
  %14 = zext i8 %7 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or i32 %13, %15
  %17 = zext i8 %9 to i32
  %18 = shl nuw i32 %17, 24
  %19 = or i32 %16, %18
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @incorrect_read_be32(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1) #1 {
  %3 = load i8, i8* %0, align 1
  %4 = getelementptr inbounds i8, i8* %0, i64 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds i8, i8* %0, i64 2
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds i8, i8* %0, i64 3
  %9 = load i8, i8* %8, align 1
  store i8 1, i8* %1, align 1
  %10 = zext i8 %9 to i32
  %11 = zext i8 %7 to i32
  %12 = shl nuw nsw i32 %11, 8
  %13 = or i32 %12, %10
  %14 = zext i8 %5 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or i32 %13, %15
  %17 = zext i8 %3 to i32
  %18 = shl nuw i32 %17, 24
  %19 = or i32 %16, %18
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i32, align 4
  %tmpcast = bitcast i32* %1 to [4 x i8]*
  %2 = alloca i32, align 4
  %tmpcast1 = bitcast i32* %2 to %struct.ok*
  %3 = alloca i32, align 4
  %tmpcast2 = bitcast i32* %3 to %struct.ok*
  store i32 -1987607165, i32* %1, align 4
  %4 = bitcast i32* %2 to i8*
  store i8 -125, i8* %4, align 4
  %5 = getelementptr inbounds %struct.ok, %struct.ok* %tmpcast1, i64 0, i32 1
  store i8 -123, i8* %5, align 1
  %6 = getelementptr inbounds %struct.ok, %struct.ok* %tmpcast1, i64 0, i32 2
  store i8 -121, i8* %6, align 2
  %7 = getelementptr inbounds %struct.ok, %struct.ok* %tmpcast1, i64 0, i32 3
  store i8 -119, i8* %7, align 1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @partial_read_le32(i32 %8)
  %10 = icmp eq i32 %9, -1987607165
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %0
  %13 = bitcast i32* %3 to i8*
  store i8 -125, i8* %13, align 4
  %14 = getelementptr inbounds %struct.ok, %struct.ok* %tmpcast2, i64 0, i32 1
  store i8 -123, i8* %14, align 1
  %15 = getelementptr inbounds %struct.ok, %struct.ok* %tmpcast2, i64 0, i32 2
  store i8 -121, i8* %15, align 2
  %16 = getelementptr inbounds %struct.ok, %struct.ok* %tmpcast2, i64 0, i32 3
  store i8 -119, i8* %16, align 1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @partial_read_be32(i32 %17)
  %19 = icmp eq i32 %18, -2088401015
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  call void @abort() #5
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %12
  %22 = bitcast i32* %1 to i8*
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 2
  %24 = call i32 @fake_read_le32(i8* noundef nonnull %22, i8* noundef nonnull %23)
  %.not = icmp eq i32 %24, -1996388989
  br i1 %.not, label %26, label %25

25:                                               ; preds = %21
  call void @abort() #5
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %21
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 2
  store i8 -121, i8* %27, align 2
  %28 = bitcast i32* %1 to i8*
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 2
  %30 = call i32 @fake_read_be32(i8* noundef nonnull %28, i8* noundef nonnull %29)
  %.not3 = icmp eq i32 %30, -2088435319
  br i1 %.not3, label %32, label %31

31:                                               ; preds = %26
  call void @abort() #5
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %26
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 2
  store i8 -121, i8* %33, align 2
  %34 = bitcast i32* %1 to i8*
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 2
  %36 = call i32 @incorrect_read_le32(i8* noundef nonnull %34, i8* noundef nonnull %35)
  %.not4 = icmp eq i32 %36, -1987607165
  br i1 %.not4, label %38, label %37

37:                                               ; preds = %32
  call void @abort() #5
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %32
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 2
  store i8 -121, i8* %39, align 2
  %40 = bitcast i32* %1 to i8*
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 2
  %42 = call i32 @incorrect_read_be32(i8* noundef nonnull %40, i8* noundef nonnull %41)
  %.not5 = icmp eq i32 %42, -2088401015
  br i1 %.not5, label %44, label %43

43:                                               ; preds = %38
  call void @abort() #5
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %38
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %43, %37, %31, %25, %20, %11
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

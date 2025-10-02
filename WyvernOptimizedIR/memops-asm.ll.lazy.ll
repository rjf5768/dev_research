; ModuleID = './memops-asm.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/memops-asm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { [32 x i8] }

@a = dso_local global %struct.A { [32 x i8] c"foobar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 1
@x = dso_local global [64 x i8] c"foobar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@i = dso_local global i32 39, align 4
@j = dso_local global i32 6, align 4
@k = dso_local global i32 4, align 4
@__const.main_test.c = private unnamed_addr constant { <{ i8, [31 x i8] }> } { <{ i8, [31 x i8] }> <{ i8 120, [31 x i8] zeroinitializer }> }, align 1
@inside_main = external dso_local global i32, align 4
@y = dso_local global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [13 x i8] c"foXXXXfoobar\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"fooXXXXfobar\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"fooX\00\00Xfobar\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca %struct.A, align 1
  %2 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %2, i8* noundef nonnull align 1 dereferenceable(32) getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 0, i64 0), i64 32, i1 false)
  store i32 1, i32* @inside_main, align 4
  %3 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(32) %3, i8* noundef nonnull dereferenceable(32) getelementptr inbounds ([64 x i8], [64 x i8]* @x, i64 0, i64 0), i64 32)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %4, label %6

4:                                                ; preds = %0
  br i1 true, label %5, label %6

5:                                                ; preds = %4
  %bcmp2 = call i32 @bcmp(i8* noundef nonnull dereferenceable(31) getelementptr inbounds ({ <{ i8, [31 x i8] }> }, { <{ i8, [31 x i8] }> }* @__const.main_test.c, i64 0, i32 0, i32 1, i64 0), i8* noundef nonnull dereferenceable(31) getelementptr inbounds ([64 x i8], [64 x i8]* @x, i64 0, i64 32), i64 31)
  %.not3 = icmp eq i32 %bcmp2, 0
  br i1 %.not3, label %7, label %6

6:                                                ; preds = %5, %4, %0
  call void @abort() #6
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  %8 = load i32, i32* @i, align 4
  %9 = sext i32 %8 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 0), i8* align 16 getelementptr inbounds ([64 x i8], [64 x i8]* @x, i64 0, i64 0), i64 %9, i1 false)
  br i1 false, label %11, label %10

10:                                               ; preds = %7
  %bcmp4 = call i32 @bcmp(i8* noundef nonnull dereferenceable(64) getelementptr inbounds ([64 x i8], [64 x i8]* @x, i64 0, i64 0), i8* noundef nonnull dereferenceable(64) getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 0), i64 64)
  %.not5 = icmp eq i32 %bcmp4, 0
  br i1 %.not5, label %12, label %11

11:                                               ; preds = %10, %7
  call void @abort() #6
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  %13 = load i32, i32* @j, align 4
  %14 = sext i32 %13 to i64
  %15 = call i8* @my_memcpy(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 6), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @x, i64 0, i64 0), i64 noundef %14) #7
  %.not6 = icmp eq i8* %15, getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 6)
  br i1 %.not6, label %16, label %18

16:                                               ; preds = %12
  %bcmp7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([64 x i8], [64 x i8]* @x, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 0), i64 6)
  %.not8 = icmp eq i32 %bcmp7, 0
  br i1 %.not8, label %17, label %18

17:                                               ; preds = %16
  %bcmp9 = call i32 @bcmp(i8* noundef nonnull dereferenceable(58) getelementptr inbounds ([64 x i8], [64 x i8]* @x, i64 0, i64 0), i8* noundef nonnull dereferenceable(58) getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 6), i64 58)
  %.not10 = icmp eq i32 %bcmp9, 0
  br i1 %.not10, label %19, label %18

18:                                               ; preds = %17, %16, %12
  call void @abort() #6
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %17
  %20 = load i32, i32* @k, align 4
  %21 = sext i32 %20 to i64
  call void @llvm.memset.p0i8.i64(i8* align 2 getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 2), i8 88, i64 %21, i1 false)
  br i1 false, label %23, label %22

22:                                               ; preds = %19
  %bcmp11 = call i32 @bcmp(i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 0), i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 13)
  %.not12 = icmp eq i32 %bcmp11, 0
  br i1 %.not12, label %24, label %23

23:                                               ; preds = %22, %19
  call void @abort() #6
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  call void @my_bcopy(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 1), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 2), i64 noundef 6) #7
  %bcmp13 = call i32 @bcmp(i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 0), i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 13)
  %.not14 = icmp eq i32 %bcmp13, 0
  br i1 %.not14, label %26, label %25

25:                                               ; preds = %24
  call void @abort() #6
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %24
  store i16 0, i16* bitcast (i8* getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 4) to i16*), align 4
  %bcmp15 = call i32 @bcmp(i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([64 x i8], [64 x i8]* @y, i64 0, i64 0), i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 13)
  %.not16 = icmp eq i32 %bcmp15, 0
  br i1 %.not16, label %28, label %27

27:                                               ; preds = %26
  call void @abort() #6
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %26
  ret void

UnifiedUnreachableBlock:                          ; preds = %27, %25, %23, %18, %11, %6
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

declare dso_local i8* @my_memcpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local void @my_bcopy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

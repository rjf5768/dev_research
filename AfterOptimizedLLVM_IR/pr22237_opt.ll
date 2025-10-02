; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/pr22237.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/pr22237.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.u = type { %struct.anon }
%struct.anon = type { %struct.s, i32 }
%struct.s = type { [256 x i8] }

@v = internal global %union.u zeroinitializer, align 4
@v0 = internal global %union.u zeroinitializer, align 4
@p = internal global %struct.s* getelementptr inbounds (%union.u, %union.u* @v, i32 0, i32 0, i32 0), align 8
@q = internal global %struct.s* bitcast (i8* getelementptr inbounds (%union.u, %union.u* @v, i32 0, i32 0, i32 0, i32 0, i64 4) to %struct.s*), align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 getelementptr inbounds (%union.u, %union.u* @v, i32 0, i32 0, i32 0, i32 0, i32 0), i8* align 4 getelementptr inbounds (%union.u, %union.u* @v0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 260, i1 false)
  %1 = load %struct.s*, %struct.s** @p, align 8
  call void @init(%struct.s* noundef %1)
  call void @qp()
  %2 = load %struct.s*, %struct.s** @q, align 8
  call void @check(%struct.s* noundef %2)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 getelementptr inbounds (%union.u, %union.u* @v, i32 0, i32 0, i32 0, i32 0, i32 0), i8* align 4 getelementptr inbounds (%union.u, %union.u* @v0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 260, i1 false)
  %3 = load %struct.s*, %struct.s** @q, align 8
  call void @init(%struct.s* noundef %3)
  call void @pq()
  %4 = load %struct.s*, %struct.s** @p, align 8
  call void @check(%struct.s* noundef %4)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init(%struct.s* noundef %0) #0 {
  %2 = alloca %struct.s*, align 8
  %3 = alloca i32, align 4
  store %struct.s* %0, %struct.s** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = trunc i32 %8 to i8
  %10 = load %struct.s*, %struct.s** %2, align 8
  %11 = getelementptr inbounds %struct.s, %struct.s* %10, i32 0, i32 0
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 %13
  store i8 %9, i8* %14, align 1
  br label %15

15:                                               ; preds = %7
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %4, !llvm.loop !4

18:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @qp() #0 {
  %1 = alloca %struct.s, align 1
  %2 = load %struct.s*, %struct.s** @q, align 8
  call void @rp(%struct.s* sret(%struct.s) align 1 %1)
  %3 = bitcast %struct.s* %2 to i8*
  %4 = bitcast %struct.s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 256, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check(%struct.s* noundef %0) #0 {
  %2 = alloca %struct.s*, align 8
  %3 = alloca i32, align 4
  store %struct.s* %0, %struct.s** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load %struct.s*, %struct.s** %2, align 8
  %9 = getelementptr inbounds %struct.s, %struct.s* %8, i32 0, i32 0
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %7
  call void @abort() #3
  unreachable

18:                                               ; preds = %7
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4, !llvm.loop !6

22:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @pq() #0 {
  %1 = alloca %struct.s, align 1
  %2 = load %struct.s*, %struct.s** @p, align 8
  call void @rq(%struct.s* sret(%struct.s) align 1 %1)
  %3 = bitcast %struct.s* %2 to i8*
  %4 = bitcast %struct.s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 256, i1 false)
  ret void
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @rp(%struct.s* noalias sret(%struct.s) align 1 %0) #0 {
  %2 = load %struct.s*, %struct.s** @p, align 8
  %3 = bitcast %struct.s* %0 to i8*
  %4 = bitcast %struct.s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 256, i1 false)
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define internal void @rq(%struct.s* noalias sret(%struct.s) align 1 %0) #0 {
  %2 = load %struct.s*, %struct.s** @q, align 8
  %3 = bitcast %struct.s* %0 to i8*
  %4 = bitcast %struct.s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 256, i1 false)
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}

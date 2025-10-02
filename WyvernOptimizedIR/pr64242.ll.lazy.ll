; ModuleID = './pr64242.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr64242.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 0, align 4
@p = dso_local global i8* null, align 8
@q = dso_local global i8* null, align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @broken_longjmp(i8* nocapture noundef %0) #0 {
  %2 = alloca [32 x i8*], align 16
  %3 = bitcast [32 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %3, i8* noundef nonnull align 1 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %4 = bitcast [32 x i8*]* %2 to i8*
  call void @llvm.eh.sjlj.longjmp(i8* nonnull %4)
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare void @llvm.eh.sjlj.longjmp(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #4 {
  %1 = alloca [5 x i8*], align 16
  %2 = load volatile i32, i32* @x, align 4
  %3 = sext i32 %2 to i64
  %4 = alloca i8, i64 %3, align 16
  store volatile i8* %4, i8** @p, align 8
  %5 = load volatile i32, i32* @x, align 4
  %6 = sext i32 %5 to i64
  %7 = alloca i8, i64 %6, align 16
  store volatile i8* %7, i8** @q, align 8
  %8 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 0
  %9 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %9, i8** %8, align 16
  %10 = call i8* @llvm.stacksave()
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 2
  store i8* %10, i8** %11, align 16
  %12 = bitcast [5 x i8*]* %1 to i8*
  %13 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %12)
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %14, label %16

14:                                               ; preds = %0
  %15 = bitcast [5 x i8*]* %1 to i8*
  call void @broken_longjmp(i8* noundef nonnull %15)
  br label %16

16:                                               ; preds = %14, %0
  %17 = load volatile i8*, i8** @q, align 8
  %18 = load volatile i8*, i8** @q, align 8
  %19 = load volatile i8*, i8** @p, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = getelementptr inbounds i8, i8* %17, i64 %22
  store volatile i8* %23, i8** @p, align 8
  %24 = load volatile i8*, i8** @p, align 8
  %25 = load volatile i32, i32* @x, align 4
  br i1 true, label %26, label %27

26:                                               ; preds = %16
  call void @abort() #3
  unreachable

27:                                               ; preds = %16
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #6

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #7

; Function Attrs: noreturn
declare dso_local void @abort() #8

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { noreturn nounwind }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #6 = { mustprogress nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

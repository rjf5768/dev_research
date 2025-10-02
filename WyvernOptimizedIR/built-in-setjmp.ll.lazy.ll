; ModuleID = './built-in-setjmp.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/built-in-setjmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local global [20 x i8*] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @sub2() #0 {
  call void @llvm.eh.sjlj.longjmp(i8* bitcast ([20 x i8*]* @buf to i8*))
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.eh.sjlj.longjmp(i8*) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [20 x i8], align 16
  %.sub = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(5) %.sub, i8* noundef nonnull align 16 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 5, i1 false) #5
  %2 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %2, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @buf, i64 0, i64 0), align 16
  %3 = call i8* @llvm.stacksave()
  store i8* %3, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @buf, i64 0, i64 2), align 16
  %4 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([20 x i8*]* @buf to i8*))
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %8, label %5

5:                                                ; preds = %0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %.sub, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 5)
  %.not1 = icmp eq i32 %bcmp, 0
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %5
  call void @abort() #1
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  call void @exit(i32 noundef 0) #1
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %15, %8
  %.0 = phi i32 [ 0, %8 ], [ %16, %15 ]
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 2
  %11 = load i8, i8* %10, align 2
  %12 = sext i8 %11 to i32
  %13 = icmp slt i32 %.0, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !4

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %18, %17
  call void @sub2()
  br label %18

UnifiedUnreachableBlock:                          ; preds = %7, %6
  unreachable
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #5

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #6

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #8

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #4 = { mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}

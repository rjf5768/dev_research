; ModuleID = './pr77718.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr77718.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"bbbbbb\00", align 1
@a = dso_local global [64 x i8] zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  %1 = call i32 @memcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([64 x i8], [64 x i8]* @a, i64 0, i64 0), i64 noundef 6) #4
  ret i32 %1
}

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar() #0 {
  %1 = call i32 @memcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([64 x i8], [64 x i8]* @a, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 noundef 6) #4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) getelementptr inbounds ([64 x i8], [64 x i8]* @a, i64 0, i64 0), i8 97, i64 64, i1 false)
  %1 = call i32 @foo()
  %.not = icmp sgt i32 %1, -1
  br i1 %.not, label %2, label %4

2:                                                ; preds = %0
  %3 = call i32 @bar()
  %.not1 = icmp slt i32 %3, 0
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %2, %0
  call void @abort() #5
  unreachable

5:                                                ; preds = %2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

; ModuleID = './20050826-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050826-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { [1 x i8], [5 x i8], [1 x i8], [2041 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"\01HELLO\01\00", align 1
@a = dso_local global %struct.A zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"HELLO\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.A* noundef %0) #0 {
  %2 = getelementptr %struct.A, %struct.A* %0, i64 0, i32 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(8) %2, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 8)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  call void @abort() #6
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %12, %4
  %.0 = phi i64 [ 0, %4 ], [ %13, %12 ]
  %6 = icmp ult i64 %.0, 2041
  br i1 %6, label %7, label %14

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 3, i64 %.0
  %9 = load i8, i8* %8, align 1
  %.not1 = icmp eq i8 %9, 0
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %7
  call void @abort() #6
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11
  %13 = add i64 %.0, 1
  br label %5, !llvm.loop !4

14:                                               ; preds = %5
  ret void

UnifiedUnreachableBlock:                          ; preds = %10, %3
  unreachable
}

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(2048) getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 0, i64 0), i8 0, i64 2048, i1 false)
  store i8 1, i8* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 0, i64 0), align 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 1, i64 0), i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 6, i1 false)
  store i8 1, i8* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 2, i64 0), align 1
  call void @bar(%struct.A* noundef nonnull @a)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @foo()
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}

; ModuleID = './20000703-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000703-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baz = type { [17 x i8], [3 x i8], i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"01234567890123456\00", align 1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @foo(%struct.baz* nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.baz, %struct.baz* %0, i64 0, i32 1, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %4, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 3, i1 false)
  %5 = getelementptr inbounds %struct.baz, %struct.baz* %0, i64 0, i32 2
  store i32 %1, i32* %5, align 4
  %6 = getelementptr inbounds %struct.baz, %struct.baz* %0, i64 0, i32 3
  store i32 %2, i32* %6, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @bar(%struct.baz* nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr %struct.baz, %struct.baz* %0, i64 0, i32 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  %5 = getelementptr inbounds %struct.baz, %struct.baz* %0, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(17) %5, i8* noundef nonnull align 1 dereferenceable(17) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 17, i1 false)
  %6 = getelementptr inbounds %struct.baz, %struct.baz* %0, i64 0, i32 1, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %6, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 3, i1 false)
  %7 = getelementptr inbounds %struct.baz, %struct.baz* %0, i64 0, i32 2
  store i32 %1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.baz, %struct.baz* %0, i64 0, i32 3
  store i32 %2, i32* %8, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca %struct.baz, align 4
  call void @foo(%struct.baz* noundef nonnull %1, i32 noundef 71, i32 noundef 18)
  %2 = getelementptr inbounds %struct.baz, %struct.baz* %1, i64 0, i32 2
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 71
  br i1 %.not, label %4, label %7

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.baz, %struct.baz* %1, i64 0, i32 3
  %6 = load i32, i32* %5, align 4
  %.not1 = icmp eq i32 %6, 18
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %4, %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  call void @bar(%struct.baz* noundef nonnull %1, i32 noundef 59, i32 noundef 26)
  %9 = getelementptr inbounds %struct.baz, %struct.baz* %1, i64 0, i32 2
  %10 = load i32, i32* %9, align 4
  %.not2 = icmp eq i32 %10, 59
  br i1 %.not2, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.baz, %struct.baz* %1, i64 0, i32 3
  %13 = load i32, i32* %12, align 4
  %.not3 = icmp eq i32 %13, 26
  br i1 %.not3, label %15, label %14

14:                                               ; preds = %11, %8
  call void @abort() #5
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %11
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %15, %14, %7
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

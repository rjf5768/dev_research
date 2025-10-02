; ModuleID = './Alloc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @MyAlloc(i64 noundef %0) #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %6

4:                                                ; preds = %1
  %5 = call noalias i8* @malloc(i64 noundef %0) #3
  br label %6

6:                                                ; preds = %4, %3
  %.0 = phi i8* [ null, %3 ], [ %5, %4 ]
  ret i8* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @MyFree(i8* noundef %0) #0 {
  call void @free(i8* noundef %0) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @MidAlloc(i64 noundef %0) #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %6

4:                                                ; preds = %1
  %5 = call i8* @VirtualAlloc(i64 noundef %0, i32 noundef 0)
  br label %6

6:                                                ; preds = %4, %3
  %.0 = phi i8* [ null, %3 ], [ %5, %4 ]
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @VirtualAlloc(i64 noundef %0, i32 noundef %1) #0 {
  %3 = call noalias i8* @malloc(i64 noundef %0) #3
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MidFree(i8* noundef %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %6

4:                                                ; preds = %1
  %5 = call i32 @VirtualFree(i8* noundef nonnull %0)
  br label %6

6:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @VirtualFree(i8* noundef %0) #0 {
  call void @free(i8* noundef %0) #3
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @SetLargePageSize() #2 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @BigAlloc(i64 noundef %0) #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %6

4:                                                ; preds = %1
  %5 = call i8* @VirtualAlloc(i64 noundef %0, i32 noundef 0)
  br label %6

6:                                                ; preds = %4, %3
  %.0 = phi i8* [ null, %3 ], [ %5, %4 ]
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BigFree(i8* noundef %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %6

4:                                                ; preds = %1
  %5 = call i32 @VirtualFree(i8* noundef nonnull %0)
  br label %6

6:                                                ; preds = %4, %3
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

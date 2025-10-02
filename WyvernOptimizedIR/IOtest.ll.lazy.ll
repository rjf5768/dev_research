; ModuleID = './IOtest.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/12-IOtest/IOtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array_count = dso_local global i64 0, align 8
@testarray = dso_local global i8* null, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @getac() #0 {
  %1 = load i64, i64* @array_count, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @setac(i64 noundef %0) #1 {
  %2 = urem i64 %0, 2684050
  store i64 %2, i64* @array_count, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @initarray() #2 {
  br label %1

1:                                                ; preds = %3, %0
  %.0 = phi i64 [ 0, %0 ], [ %8, %3 ]
  %2 = icmp ult i64 %.0, 2684050
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = urem i64 %.0, 255
  %5 = trunc i64 %4 to i8
  %6 = load i8*, i8** @testarray, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 %.0
  store i8 %5, i8* %7, align 1
  %8 = add i64 %.0, 1
  br label %1, !llvm.loop !4

9:                                                ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local signext i8 @array(i64 noundef %0) #0 {
  %2 = load i8*, i8** @testarray, align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 %0
  %4 = load i8, i8* %3, align 1
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i8 @min(i8 noundef signext %0, i8 noundef signext %1) #3 {
  %3 = icmp sgt i8 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.in = phi i8 [ %0, %4 ], [ %1, %5 ]
  ret i8 %.in
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i8 @max(i8 noundef signext %0, i8 noundef signext %1) #3 {
  %3 = icmp sgt i8 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.in = phi i8 [ %1, %4 ], [ %0, %5 ]
  ret i8 %.in
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i8 @add(i8 noundef signext %0, i8 noundef signext %1) #3 {
  %3 = add i8 %0, %1
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i8 @mult(i8 noundef signext %0, i8 noundef signext %1) #3 {
  %3 = mul i8 %0, %1
  ret i8 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @loop(void (i8*)* nocapture noundef readonly %0, void (i8*)* nocapture noundef readonly %1, i8* noundef %2) #4 {
  call void %0(i8* noundef %2) #7
  br label %4

4:                                                ; preds = %6, %3
  %.0 = phi i64 [ 0, %3 ], [ %7, %6 ]
  %5 = icmp ult i64 %.0, 2684050
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  call void %1(i8* noundef %2) #7
  %7 = add i64 %.0, 1
  br label %4, !llvm.loop !6

8:                                                ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #4 {
  %1 = call noalias dereferenceable_or_null(2684050) i8* @malloc(i64 noundef 2684050) #7
  store i8* %1, i8** @testarray, align 8
  call void @testA() #7
  call void @testB() #7
  call void @testC() #7
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #5

declare dso_local void @testA() #6

declare dso_local void @testB() #6

declare dso_local void @testC() #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}

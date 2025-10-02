; ModuleID = './EndianPortable.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ALAC/encode/EndianPortable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i16 @Swap16NtoB(i16 noundef returned zeroext %0) #0 {
  ret i16 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i16 @Swap16BtoN(i16 noundef returned zeroext %0) #0 {
  ret i16 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @Swap32NtoB(i32 noundef returned %0) #0 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @Swap32BtoN(i32 noundef returned %0) #0 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @Swap64BtoN(i64 noundef returned %0) #0 {
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @Swap64NtoB(i64 noundef returned %0) #0 {
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @SwapFloat32BtoN(float noundef returned %0) #0 {
  ret float %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @SwapFloat32NtoB(float noundef returned %0) #0 {
  ret float %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @SwapFloat64BtoN(double noundef returned %0) #0 {
  ret double %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @SwapFloat64NtoB(double noundef returned %0) #0 {
  ret double %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @Swap16(i16* nocapture noundef %0) #1 {
  %2 = load i16, i16* %0, align 2
  %3 = call i16 @llvm.bswap.i16(i16 %2)
  store i16 %3, i16* %0, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @Swap24(i8* nocapture noundef %0) #1 {
  %2 = load i8, i8* %0, align 1
  %3 = getelementptr inbounds i8, i8* %0, i64 2
  %4 = load i8, i8* %3, align 1
  store i8 %4, i8* %0, align 1
  %5 = getelementptr inbounds i8, i8* %0, i64 2
  store i8 %2, i8* %5, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @Swap32(i32* nocapture noundef %0) #1 {
  %2 = load i32, i32* %0, align 4
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  store i32 %3, i32* %0, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

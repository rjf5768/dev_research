; ModuleID = './pr63843.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr63843.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.x = private unnamed_addr constant [8 x i8] c"\01\01\01\01\00\00\00\00", align 1

; Function Attrs: hot mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local zeroext i16 @bar(i8* nocapture noundef %0) #0 {
  %2 = bitcast i8* %0 to i32*
  %3 = load i32, i32* %2, align 1
  %4 = xor i32 %3, -2139062144
  %5 = bitcast i8* %0 to i32*
  store i32 %4, i32* %5, align 1
  %6 = getelementptr inbounds i8, i8* %0, i64 2
  %7 = bitcast i8* %6 to i16*
  %8 = load i16, i16* %7, align 1
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  ret i16 %9
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i64, align 8
  store i64 16843009, i64* %1, align 8
  %2 = bitcast i64* %1 to i8*
  %3 = call zeroext i16 @bar(i8* noundef nonnull %2) #5
  %.not = icmp eq i16 %3, -32383
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #6
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

attributes #0 = { hot mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { hot }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

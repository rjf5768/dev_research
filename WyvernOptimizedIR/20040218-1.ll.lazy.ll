; ModuleID = './20040218-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040218-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.y = private unnamed_addr constant [2 x i64] [i64 -1, i64 16000], align 16
@__const.main.yw = private unnamed_addr constant [2 x i16] [i16 -1, i16 16000], align 2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @xb(i64* nocapture noundef readonly %0) #0 {
  %2 = load i64, i64* %0, align 8
  %3 = and i64 %2, 255
  %4 = getelementptr inbounds i64, i64* %0, i64 1
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %3, %5
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @xw(i64* nocapture noundef readonly %0) #0 {
  %2 = load i64, i64* %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds i64, i64* %0, i64 1
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %3, %5
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local signext i16 @yb(i16* nocapture noundef readonly %0) #0 {
  %2 = load i16, i16* %0, align 2
  %3 = and i16 %2, 255
  %4 = getelementptr inbounds i16, i16* %0, i64 1
  %5 = load i16, i16* %4, align 2
  %6 = add i16 %3, %5
  ret i16 %6
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i64 @xb(i64* noundef getelementptr inbounds ([2 x i64], [2 x i64]* @__const.main.y, i64 0, i64 0))
  %.not = icmp eq i64 %1, 16255
  br i1 %.not, label %2, label %6

2:                                                ; preds = %0
  %3 = call i64 @xw(i64* noundef getelementptr inbounds ([2 x i64], [2 x i64]* @__const.main.y, i64 0, i64 0))
  %.not1 = icmp eq i64 %3, 81535
  br i1 %.not1, label %4, label %6

4:                                                ; preds = %2
  %5 = call signext i16 @yb(i16* noundef getelementptr inbounds ([2 x i16], [2 x i16]* @__const.main.yw, i64 0, i64 0))
  %.not2 = icmp eq i16 %5, 16255
  br i1 %.not2, label %7, label %6

6:                                                ; preds = %4, %2, %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %7, %6
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

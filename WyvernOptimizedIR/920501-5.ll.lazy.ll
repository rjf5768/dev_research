; ModuleID = './920501-5.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920501-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.x.j = private unnamed_addr constant [3 x i8*] [i8* blockaddress(@x, %2), i8* blockaddress(@x, %3), i8* blockaddress(@x, %4)], align 16

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i32 @x(i32 noundef %0) #0 {
  br label %6

2:                                                ; preds = %6
  br label %5

3:                                                ; preds = %6
  br label %5

4:                                                ; preds = %6
  br label %5

5:                                                ; preds = %4, %3, %2
  %.0 = phi i32 [ 2, %2 ], [ 5, %4 ], [ 3, %3 ]
  ret i32 %.0

6:                                                ; preds = %1
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [3 x i8*], [3 x i8*]* @__const.x.j, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  indirectbr i8* %9, [label %2, label %3, label %4]
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call i32 @x(i32 noundef 0)
  %.not = icmp eq i32 %1, 2
  br i1 %.not, label %2, label %6

2:                                                ; preds = %0
  %3 = call i32 @x(i32 noundef 1)
  %.not1 = icmp eq i32 %3, 3
  br i1 %.not1, label %4, label %6

4:                                                ; preds = %2
  %5 = call i32 @x(i32 noundef 2)
  %.not2 = icmp eq i32 %5, 5
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

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

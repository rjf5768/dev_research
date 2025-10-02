; ModuleID = './2003-07-10-SignConversions.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-07-10-SignConversions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"%d %d --> unsigned: us = %d, us2 = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%d %d -->   signed:  s = %d,  s2 = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%d %d --> unsigned: uc = %d, uc2 = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%d %d -->   signed: sc = %d, sc2 = %d\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i8 @getUC() #0 {
  ret i8 -128
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i8 @getSC() #0 {
  ret i8 -128
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call signext i8 @getSC()
  %2 = call zeroext i8 @getUC()
  %3 = sext i8 %1 to i32
  %4 = sext i8 %1 to i32
  %5 = zext i8 %2 to i32
  %6 = and i32 %3, 65535
  %7 = zext i8 %2 to i32
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3
  %9 = sext i8 %1 to i32
  %10 = zext i8 %2 to i32
  %11 = sext i8 %1 to i32
  %12 = zext i8 %2 to i32
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) #3
  %14 = sext i8 %1 to i32
  %15 = zext i8 %2 to i32
  %16 = zext i8 %1 to i32
  %17 = zext i8 %2 to i32
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17) #3
  %19 = sext i8 %1 to i32
  %20 = zext i8 %2 to i32
  %21 = sext i8 %1 to i32
  %22 = sext i8 %2 to i32
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

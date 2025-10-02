; ModuleID = './2003-07-06-IntOverflow.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-07-06-IntOverflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"compare after overflow is TRUE\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"compare after overflow is FALSE\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"divide after overflow = %d (0x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"divide negative value by power-of-2 = %d (0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"subtract after overflow = %d (0x%x)\0A\00", align 1
@str = private unnamed_addr constant [32 x i8] c"compare after overflow is FALSE\00", align 1
@str.1 = private unnamed_addr constant [31 x i8] c"compare after overflow is TRUE\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @compareOvf(i32 noundef %0, i32 noundef %1) #0 {
  %3 = mul nsw i32 %0, %0
  %4 = mul nsw i32 %1, %1
  %5 = add nuw nsw i32 %3, %4
  %6 = icmp ult i32 %5, 4194304
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @str.1, i64 0, i64 0))
  br label %9

8:                                                ; preds = %2
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @divideOvf(i32 noundef %0, i32 noundef %1) #0 {
  %3 = mul nsw i32 %0, %0
  %4 = mul nsw i32 %1, %1
  %5 = add nuw nsw i32 %3, %4
  %6 = sdiv i32 -2147483648, %5
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i32 noundef %6) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @divideNeg(i32 noundef %0, i32 noundef %1) #0 {
  %3 = mul nsw i32 %0, %0
  %4 = mul nsw i32 %1, %1
  %5 = sub nsw i32 %3, %4
  %6 = sdiv i32 %5, 262144
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 noundef %6, i32 noundef %6) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @subtractOvf(i32 noundef %0, i32 noundef %1) #0 {
  %3 = mul nsw i32 %0, %0
  %4 = mul nsw i32 %1, %1
  %5 = add nuw nsw i32 %3, %4
  %6 = sub nuw i32 -2147483648, %5
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 noundef %6, i32 noundef %6) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @compareOvf(i32 noundef 2097152, i32 noundef 2097152)
  call void @divideOvf(i32 noundef 2097153, i32 noundef 2097154)
  call void @divideNeg(i32 noundef 2097153, i32 noundef 2097154)
  call void @subtractOvf(i32 noundef 2097153, i32 noundef 2097154)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

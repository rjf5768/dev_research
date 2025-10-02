; ModuleID = './2003-05-31-CastToBool.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-05-31-CastToBool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"y = %d, (y == 2 || y == 0) == %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"y = %d, (y > 2 || y < 5) == %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"y = %d, (y ^ 2 ^ ~y) == %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%lld \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testCastOps(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 2
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0
  %phi.cast = zext i1 %4 to i32
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi i32 [ 1, %1 ], [ %phi.cast, %3 ]
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 noundef %0, i32 noundef %6) #2
  %8 = icmp slt i32 %0, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = icmp sgt i32 %0, -10
  %phi.cast1 = zext i1 %10 to i32
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ 0, %5 ], [ %phi.cast1, %9 ]
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 noundef %0, i32 noundef %12) #2
  %14 = icmp ne i32 %0, -8
  %15 = zext i1 %14 to i32
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 noundef %0, i32 noundef %15) #2
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testBool(i1 noundef zeroext %0) #0 {
  %2 = zext i1 %0 to i32
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %2) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @testByte(i8 noundef signext %0) #0 {
  %2 = sext i8 %0 to i32
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %2) #2
  %4 = icmp ne i8 %0, 0
  call void @testBool(i1 noundef zeroext %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @testShort(i16 noundef signext %0) #0 {
  %2 = sext i16 %0 to i32
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %2) #2
  %4 = icmp ne i16 %0, 0
  call void @testBool(i1 noundef zeroext %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @testInt(i32 noundef %0) #0 {
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %0) #2
  %3 = icmp ne i32 %0, 0
  call void @testBool(i1 noundef zeroext %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @testLong(i64 noundef %0) #0 {
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 noundef %0) #2
  %3 = icmp ne i64 %0, 0
  call void @testBool(i1 noundef zeroext %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @testByte(i8 noundef signext 0)
  call void @testByte(i8 noundef signext 123)
  call void @testShort(i16 noundef signext 0)
  call void @testShort(i16 noundef signext 1234)
  call void @testInt(i32 noundef 0)
  call void @testInt(i32 noundef 1234)
  call void @testLong(i64 noundef 0)
  call void @testLong(i64 noundef 123121231231231)
  call void @testLong(i64 noundef 1230098424783699968)
  call void @testLong(i64 noundef 69920)
  call void @testCastOps(i32 noundef 2)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040218-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040218-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.y = private unnamed_addr constant [2 x i64] [i64 -1, i64 16000], align 16
@__const.main.yw = private unnamed_addr constant [2 x i16] [i16 -1, i16 16000], align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @xb(i64* noundef %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %4 = load i64*, i64** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = and i64 %5, 255
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64*, i64** %2, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 1
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %7, %10
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @xw(i64* noundef %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %4 = load i64*, i64** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = and i64 %5, 65535
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64*, i64** %2, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 1
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %7, %10
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @yb(i16* noundef %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i16, align 2
  store i16* %0, i16** %2, align 8
  %4 = load i16*, i16** %2, align 8
  %5 = load i16, i16* %4, align 2
  %6 = sext i16 %5 to i32
  %7 = and i32 %6, 255
  %8 = trunc i32 %7 to i16
  store i16 %8, i16* %3, align 2
  %9 = load i16, i16* %3, align 2
  %10 = sext i16 %9 to i32
  %11 = load i16*, i16** %2, align 8
  %12 = getelementptr inbounds i16, i16* %11, i64 1
  %13 = load i16, i16* %12, align 2
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %10, %14
  %16 = trunc i32 %15 to i16
  ret i16 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i64], align 16
  %3 = alloca [2 x i16], align 2
  store i32 0, i32* %1, align 4
  %4 = bitcast [2 x i64]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([2 x i64]* @__const.main.y to i8*), i64 16, i1 false)
  %5 = bitcast [2 x i16]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %5, i8* align 2 bitcast ([2 x i16]* @__const.main.yw to i8*), i64 4, i1 false)
  %6 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %7 = call i64 @xb(i64* noundef %6)
  %8 = icmp ne i64 %7, 16255
  br i1 %8, label %18, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %11 = call i64 @xw(i64* noundef %10)
  %12 = icmp ne i64 %11, 81535
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds [2 x i16], [2 x i16]* %3, i64 0, i64 0
  %15 = call signext i16 @yb(i16* noundef %14)
  %16 = sext i16 %15 to i32
  %17 = icmp ne i32 %16, 16255
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %9, %0
  call void @abort() #3
  unreachable

19:                                               ; preds = %13
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

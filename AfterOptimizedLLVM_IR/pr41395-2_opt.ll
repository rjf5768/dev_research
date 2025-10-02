; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41395-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41395-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VEC_char_base = type { i32, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @foo(%struct.VEC_char_base* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.VEC_char_base*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  store %struct.VEC_char_base* %0, %struct.VEC_char_base** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.VEC_char_base*, %struct.VEC_char_base** %3, align 8
  %7 = getelementptr inbounds %struct.VEC_char_base, %struct.VEC_char_base* %6, i32 0, i32 2
  %8 = bitcast %union.anon* %7 to [1 x i16]*
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [1 x i16], [1 x i16]* %8, i64 0, i64 %10
  store i16 0, i16* %11, align 2
  %12 = load %struct.VEC_char_base*, %struct.VEC_char_base** %3, align 8
  %13 = getelementptr inbounds %struct.VEC_char_base, %struct.VEC_char_base* %12, i32 0, i32 2
  %14 = bitcast %union.anon* %13 to [1 x i16]*
  %15 = getelementptr inbounds [1 x i16], [1 x i16]* %14, i64 0, i64 16
  store i16* %15, i16** %5, align 8
  %16 = load i16*, i16** %5, align 8
  store i16 1, i16* %16, align 2
  %17 = load %struct.VEC_char_base*, %struct.VEC_char_base** %3, align 8
  %18 = getelementptr inbounds %struct.VEC_char_base, %struct.VEC_char_base* %17, i32 0, i32 2
  %19 = bitcast %union.anon* %18 to [1 x i16]*
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [1 x i16], [1 x i16]* %19, i64 0, i64 %21
  %23 = load i16, i16* %22, align 2
  ret i16 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.VEC_char_base*, align 8
  store i32 0, i32* %1, align 4
  %3 = call i8* @malloc(i64 noundef 276)
  %4 = bitcast i8* %3 to %struct.VEC_char_base*
  store %struct.VEC_char_base* %4, %struct.VEC_char_base** %2, align 8
  %5 = load %struct.VEC_char_base*, %struct.VEC_char_base** %2, align 8
  %6 = call signext i16 @foo(%struct.VEC_char_base* noundef %5, i32 noundef 16)
  %7 = sext i16 %6 to i32
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #3
  unreachable

10:                                               ; preds = %0
  ret i32 0
}

declare dso_local i8* @malloc(i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

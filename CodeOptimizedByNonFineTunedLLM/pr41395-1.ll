; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41395-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41395-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VEC_char_base = type { i32, i32, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @foo(%struct.VEC_char_base* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.VEC_char_base*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  store %struct.VEC_char_base* %0, %struct.VEC_char_base** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.VEC_char_base*, %struct.VEC_char_base** %3, align 8
  %7 = getelementptr inbounds %struct.VEC_char_base, %struct.VEC_char_base* %6, i32 0, i32 2
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [1 x i16], [1 x i16]* %7, i64 0, i64 %9
  store i16 0, i16* %10, align 2
  %11 = load %struct.VEC_char_base*, %struct.VEC_char_base** %3, align 8
  %12 = getelementptr inbounds %struct.VEC_char_base, %struct.VEC_char_base* %11, i32 0, i32 2
  %13 = getelementptr inbounds [1 x i16], [1 x i16]* %12, i64 0, i64 8
  store i16* %13, i16** %5, align 8
  %14 = load i16*, i16** %5, align 8
  store i16 1, i16* %14, align 2
  %15 = load %struct.VEC_char_base*, %struct.VEC_char_base** %3, align 8
  %16 = getelementptr inbounds %struct.VEC_char_base, %struct.VEC_char_base* %15, i32 0, i32 2
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [1 x i16], [1 x i16]* %16, i64 0, i64 %18
  %20 = load i16, i16* %19, align 2
  ret i16 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.VEC_char_base*, align 8
  store i32 0, i32* %1, align 4
  %3 = call i8* @malloc(i64 noundef 268)
  %4 = bitcast i8* %3 to %struct.VEC_char_base*
  store %struct.VEC_char_base* %4, %struct.VEC_char_base** %2, align 8
  %5 = load %struct.VEC_char_base*, %struct.VEC_char_base** %2, align 8
  %6 = call signext i16 @foo(%struct.VEC_char_base* noundef %5, i32 noundef 8)
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

; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strct-pack-4.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strct-pack-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.three_char_t = type <{ i8, i16 }>

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @my_set_a() #0 {
  ret i8 -85
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @my_set_b() #0 {
  ret i16 4660
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.three_char_t, align 1
  store i32 0, i32* %1, align 4
  %3 = call zeroext i8 @my_set_a()
  %4 = getelementptr inbounds %struct.three_char_t, %struct.three_char_t* %2, i32 0, i32 0
  store i8 %3, i8* %4, align 1
  %5 = call zeroext i16 @my_set_b()
  %6 = getelementptr inbounds %struct.three_char_t, %struct.three_char_t* %2, i32 0, i32 1
  store i16 %5, i16* %6, align 1
  %7 = getelementptr inbounds %struct.three_char_t, %struct.three_char_t* %2, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp ne i32 %9, 171
  br i1 %10, label %16, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.three_char_t, %struct.three_char_t* %2, i32 0, i32 1
  %13 = load i16, i16* %12, align 1
  %14 = zext i16 %13 to i32
  %15 = icmp ne i32 %14, 4660
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %0
  call void @abort() #2
  unreachable

17:                                               ; preds = %11
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

; ModuleID = './20020510-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020510-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @testc(i8 noundef zeroext %0, i32 noundef %1) #0 {
  %.not = icmp eq i8 %0, 0
  br i1 %.not, label %8, label %3

3:                                                ; preds = %2
  %4 = icmp sgt i8 %0, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %6, label %7

6:                                                ; preds = %5
  call void @abort() #2
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  br label %11

8:                                                ; preds = %3, %2
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %8
  call void @abort() #2
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %7
  ret void

UnifiedUnreachableBlock:                          ; preds = %9, %6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @tests(i16 noundef zeroext %0, i32 noundef %1) #0 {
  %.not = icmp eq i16 %0, 0
  br i1 %.not, label %8, label %3

3:                                                ; preds = %2
  %4 = icmp sgt i16 %0, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %6, label %7

6:                                                ; preds = %5
  call void @abort() #2
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  br label %11

8:                                                ; preds = %3, %2
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %8
  call void @abort() #2
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %7
  ret void

UnifiedUnreachableBlock:                          ; preds = %9, %6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @testi(i32 noundef %0, i32 noundef %1) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %8, label %3

3:                                                ; preds = %2
  %4 = icmp sgt i32 %0, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %6, label %7

6:                                                ; preds = %5
  call void @abort() #2
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  br label %11

8:                                                ; preds = %3, %2
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %8
  call void @abort() #2
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %7
  ret void

UnifiedUnreachableBlock:                          ; preds = %9, %6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @testl(i64 noundef %0, i32 noundef %1) #0 {
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %8, label %3

3:                                                ; preds = %2
  %4 = icmp sgt i64 %0, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %6, label %7

6:                                                ; preds = %5
  call void @abort() #2
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  br label %11

8:                                                ; preds = %3, %2
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %8
  call void @abort() #2
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %7
  ret void

UnifiedUnreachableBlock:                          ; preds = %9, %6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @testc(i8 noundef zeroext 0, i32 noundef 0)
  call void @testc(i8 noundef zeroext 1, i32 noundef 1)
  call void @testc(i8 noundef zeroext 127, i32 noundef 1)
  call void @testc(i8 noundef zeroext -128, i32 noundef 0)
  call void @testc(i8 noundef zeroext -1, i32 noundef 0)
  call void @tests(i16 noundef zeroext 0, i32 noundef 0)
  call void @tests(i16 noundef zeroext 1, i32 noundef 1)
  call void @tests(i16 noundef zeroext 32767, i32 noundef 1)
  call void @tests(i16 noundef zeroext -32768, i32 noundef 0)
  call void @tests(i16 noundef zeroext -1, i32 noundef 0)
  call void @testi(i32 noundef 0, i32 noundef 0)
  call void @testi(i32 noundef 1, i32 noundef 1)
  call void @testi(i32 noundef 2147483647, i32 noundef 1)
  call void @testi(i32 noundef -2147483648, i32 noundef 0)
  call void @testi(i32 noundef -1, i32 noundef 0)
  call void @testl(i64 noundef 0, i32 noundef 0)
  call void @testl(i64 noundef 1, i32 noundef 1)
  call void @testl(i64 noundef 9223372036854775807, i32 noundef 1)
  call void @testl(i64 noundef -9223372036854775808, i32 noundef 0)
  call void @testl(i64 noundef -1, i32 noundef 0)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030811-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030811-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i0 = dso_local global [0 x i32] zeroinitializer, align 4
@i1 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @vararg(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  %1 = alloca i32, align 4
  %2 = call i8* @llvm.returnaddress(i32 0)
  %3 = ptrtoint i8* %2 to i64
  %4 = trunc i64 %3 to i32
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  call void (i32, ...) @vararg(i32 noundef 0, i32 noundef %5)
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  %1 = call i8* @llvm.returnaddress(i32 0)
  %2 = ptrtoint i8* %1 to i64
  %3 = trunc i64 %2 to i32
  store i32 %3, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @i0, i64 0, i64 0), align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
  %1 = call i8* @llvm.returnaddress(i32 0)
  %2 = ptrtoint i8* %1 to i64
  %3 = trunc i64 %2 to i32
  store i32 %3, i32* @i1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test4() #0 {
  %1 = alloca i64, align 8
  %2 = call i8* @llvm.returnaddress(i32 0)
  %3 = ptrtoint i8* %2 to i64
  store volatile i64 %3, i64* %1, align 8
  %4 = load volatile i64, i64* %1, align 8
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @i0, i64 0, i64 0), align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

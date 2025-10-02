; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr63843.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr63843.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.x = private unnamed_addr constant [8 x i8] c"\01\01\01\01\00\00\00\00", align 1

; Function Attrs: hot noinline nounwind uwtable
define dso_local zeroext i16 @bar(i8* noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  %6 = bitcast i32* %4 to i8*
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 1 %8, i64 4, i1 false)
  %9 = load i32, i32* %4, align 4
  %10 = xor i32 %9, -2139062144
  store i32 %10, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = bitcast i32* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = bitcast i16* %5 to i8*
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %14, i8* align 1 %16, i64 2, i1 false)
  %17 = load i16, i16* %5, align 2
  store i16 %17, i16* %2, align 2
  %18 = load i16, i16* %2, align 2
  %19 = zext i16 %18 to i32
  %20 = shl i32 %19, 8
  %21 = load i16, i16* %2, align 2
  %22 = zext i16 %21 to i32
  %23 = ashr i32 %22, 8
  %24 = or i32 %20, %23
  %25 = trunc i32 %24 to i16
  ret i16 %25
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i8], align 1
  store i32 0, i32* %1, align 4
  %3 = bitcast [8 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.main.x, i32 0, i32 0), i64 8, i1 false)
  %4 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %5 = call zeroext i16 @bar(i8* noundef %4) #4
  %6 = zext i16 %5 to i32
  %7 = icmp ne i32 %6, 33153
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #5
  unreachable

9:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { hot noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { hot }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

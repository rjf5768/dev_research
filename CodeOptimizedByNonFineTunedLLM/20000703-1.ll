; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000703-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000703-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baz = type { [17 x i8], [3 x i8], i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"01234567890123456\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.baz* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.baz*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.baz* %0, %struct.baz** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.baz*, %struct.baz** %4, align 8
  %8 = getelementptr inbounds %struct.baz, %struct.baz* %7, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 3, i1 false)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.baz*, %struct.baz** %4, align 8
  %12 = getelementptr inbounds %struct.baz, %struct.baz* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.baz*, %struct.baz** %4, align 8
  %15 = getelementptr inbounds %struct.baz, %struct.baz* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.baz* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.baz*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.baz* %0, %struct.baz** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.baz*, %struct.baz** %4, align 8
  %10 = bitcast %struct.baz* %9 to i8*
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 28, i1 false)
  %12 = load i8*, i8** %7, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load %struct.baz*, %struct.baz** %4, align 8
  %15 = getelementptr inbounds %struct.baz, %struct.baz* %14, i32 0, i32 0
  %16 = getelementptr inbounds [17 x i8], [17 x i8]* %15, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 1 getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 17, i1 false)
  %17 = load %struct.baz*, %struct.baz** %4, align 8
  %18 = getelementptr inbounds %struct.baz, %struct.baz* %17, i32 0, i32 1
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 3, i1 false)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.baz*, %struct.baz** %4, align 8
  %22 = getelementptr inbounds %struct.baz, %struct.baz* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.baz*, %struct.baz** %4, align 8
  %25 = getelementptr inbounds %struct.baz, %struct.baz* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.baz, align 4
  store i32 0, i32* %1, align 4
  call void @foo(%struct.baz* noundef %2, i32 noundef 71, i32 noundef 18)
  %3 = getelementptr inbounds %struct.baz, %struct.baz* %2, i32 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 71
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.baz, %struct.baz* %2, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 18
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %0
  call void @abort() #4
  unreachable

11:                                               ; preds = %6
  call void @bar(%struct.baz* noundef %2, i32 noundef 59, i32 noundef 26)
  %12 = getelementptr inbounds %struct.baz, %struct.baz* %2, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 59
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.baz, %struct.baz* %2, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 26
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %11
  call void @abort() #4
  unreachable

20:                                               ; preds = %15
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

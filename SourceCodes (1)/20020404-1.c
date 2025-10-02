; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020404-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020404-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_struct = type { i32 }
%struct.asection_struct = type { i8, i64, i64, i32, i32 }

@hello = internal global [6 x i8] c"hello\00", align 1
@.str = private unnamed_addr constant [8 x i8] c".newsec\00", align 1
@bfd_openw_with_cleanup.foo_bfd = internal global %struct.bfd_struct zeroinitializer, align 4
@bfd_make_section_anyway.foo_section = internal global %struct.asection_struct zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @dump_bfd_file(i8* noundef null, i8* noundef null, i8* noundef null, i64 noundef 3735928559, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @hello, i64 0, i64 0), i32 noundef 514703087)
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @dump_bfd_file(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i32 noundef %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bfd_struct*, align 8
  %14 = alloca %struct.asection_struct*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call %struct.bfd_struct* @bfd_openw_with_cleanup(i8* noundef %15, i8* noundef %16, i8* noundef %17)
  store %struct.bfd_struct* %18, %struct.bfd_struct** %13, align 8
  %19 = load %struct.bfd_struct*, %struct.bfd_struct** %13, align 8
  %20 = call %struct.asection_struct* @bfd_make_section_anyway(%struct.bfd_struct* noundef %19, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.asection_struct* %20, %struct.asection_struct** %14, align 8
  %21 = load %struct.bfd_struct*, %struct.bfd_struct** %13, align 8
  %22 = load %struct.asection_struct*, %struct.asection_struct** %14, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = call i32 @bfd_set_section_size(%struct.bfd_struct* noundef %21, %struct.asection_struct* noundef %22, i64 noundef %24)
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.asection_struct*, %struct.asection_struct** %14, align 8
  %28 = getelementptr inbounds %struct.asection_struct, %struct.asection_struct* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.asection_struct*, %struct.asection_struct** %14, align 8
  %30 = getelementptr inbounds %struct.asection_struct, %struct.asection_struct* %29, i32 0, i32 1
  store i64 %26, i64* %30, align 8
  %31 = load %struct.asection_struct*, %struct.asection_struct** %14, align 8
  %32 = bitcast %struct.asection_struct* %31 to i8*
  %33 = load i8, i8* %32, align 8
  %34 = and i8 %33, -2
  %35 = or i8 %34, 1
  store i8 %35, i8* %32, align 8
  %36 = load %struct.asection_struct*, %struct.asection_struct** %14, align 8
  %37 = getelementptr inbounds %struct.asection_struct, %struct.asection_struct* %36, i32 0, i32 3
  store i32 0, i32* %37, align 8
  %38 = load %struct.bfd_struct*, %struct.bfd_struct** %13, align 8
  %39 = load %struct.asection_struct*, %struct.asection_struct** %14, align 8
  %40 = call i32 @bfd_set_section_flags(%struct.bfd_struct* noundef %38, %struct.asection_struct* noundef %39, i32 noundef 515)
  %41 = load %struct.asection_struct*, %struct.asection_struct** %14, align 8
  %42 = getelementptr inbounds %struct.asection_struct, %struct.asection_struct* %41, i32 0, i32 4
  store i32 0, i32* %42, align 4
  %43 = load %struct.bfd_struct*, %struct.bfd_struct** %13, align 8
  %44 = load %struct.asection_struct*, %struct.asection_struct** %14, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = call i32 @bfd_set_section_contents(%struct.bfd_struct* noundef %43, %struct.asection_struct* noundef %44, i8* noundef %45, i64 noundef 0, i64 noundef %47)
  ret void
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.bfd_struct* @bfd_openw_with_cleanup(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  ret %struct.bfd_struct* @bfd_openw_with_cleanup.foo_bfd
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.asection_struct* @bfd_make_section_anyway(%struct.bfd_struct* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.bfd_struct*, align 8
  %4 = alloca i8*, align 8
  store %struct.bfd_struct* %0, %struct.bfd_struct** %3, align 8
  store i8* %1, i8** %4, align 8
  ret %struct.asection_struct* @bfd_make_section_anyway.foo_section
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bfd_set_section_size(%struct.bfd_struct* noundef %0, %struct.asection_struct* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.bfd_struct*, align 8
  %5 = alloca %struct.asection_struct*, align 8
  %6 = alloca i64, align 8
  store %struct.bfd_struct* %0, %struct.bfd_struct** %4, align 8
  store %struct.asection_struct* %1, %struct.asection_struct** %5, align 8
  store i64 %2, i64* %6, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bfd_set_section_flags(%struct.bfd_struct* noundef %0, %struct.asection_struct* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfd_struct*, align 8
  %6 = alloca %struct.asection_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.bfd_struct* %0, %struct.bfd_struct** %5, align 8
  store %struct.asection_struct* %1, %struct.asection_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bfd_set_section_contents(%struct.bfd_struct* noundef %0, %struct.asection_struct* noundef %1, i8* noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfd_struct*, align 8
  %8 = alloca %struct.asection_struct*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.bfd_struct* %0, %struct.bfd_struct** %7, align 8
  store %struct.asection_struct* %1, %struct.asection_struct** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 514703087
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  call void @abort() #2
  unreachable

15:                                               ; preds = %5
  %16 = load i32, i32* %6, align 4
  ret i32 %16
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

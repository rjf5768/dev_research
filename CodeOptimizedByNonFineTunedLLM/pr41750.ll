; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41750.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41750.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo_link_hash_table = type { %struct.bfd_link_hash_table, i32*, i32* }
%struct.bfd_link_hash_table = type { i32 }
%struct.foo_link_info = type { %struct.foo_link_hash_table* }

@hash = dso_local global %struct.foo_link_hash_table zeroinitializer, align 8
@link_info = dso_local global %struct.foo_link_info zeroinitializer, align 8
@abfd = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo_create_got_section(i32* noundef %0, %struct.foo_link_info* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.foo_link_info*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.foo_link_info* %1, %struct.foo_link_info** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.foo_link_info*, %struct.foo_link_info** %4, align 8
  %7 = getelementptr inbounds %struct.foo_link_info, %struct.foo_link_info* %6, i32 0, i32 0
  %8 = load %struct.foo_link_hash_table*, %struct.foo_link_hash_table** %7, align 8
  %9 = getelementptr inbounds %struct.foo_link_hash_table, %struct.foo_link_hash_table* %8, i32 0, i32 2
  store i32* %5, i32** %9, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @elf64_ia64_check_relocs(i32* noundef %0, %struct.foo_link_info* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.foo_link_info*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.foo_link_info* %1, %struct.foo_link_info** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.foo_link_info*, %struct.foo_link_info** %4, align 8
  %7 = load %struct.foo_link_info*, %struct.foo_link_info** %4, align 8
  %8 = getelementptr inbounds %struct.foo_link_info, %struct.foo_link_info* %7, i32 0, i32 0
  %9 = load %struct.foo_link_hash_table*, %struct.foo_link_hash_table** %8, align 8
  %10 = call i32* @get_got(i32* noundef %5, %struct.foo_link_info* noundef %6, %struct.foo_link_hash_table* noundef %9)
  ret i32* %10
}

; Function Attrs: noinline nounwind uwtable
define internal i32* @get_got(i32* noundef %0, %struct.foo_link_info* noundef %1, %struct.foo_link_hash_table* noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.foo_link_info*, align 8
  %7 = alloca %struct.foo_link_hash_table*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.foo_link_info* %1, %struct.foo_link_info** %6, align 8
  store %struct.foo_link_hash_table* %2, %struct.foo_link_hash_table** %7, align 8
  %10 = load %struct.foo_link_hash_table*, %struct.foo_link_hash_table** %7, align 8
  %11 = getelementptr inbounds %struct.foo_link_hash_table, %struct.foo_link_hash_table* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %3
  %16 = load %struct.foo_link_hash_table*, %struct.foo_link_hash_table** %7, align 8
  %17 = getelementptr inbounds %struct.foo_link_hash_table, %struct.foo_link_hash_table* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  store i32* %22, i32** %9, align 8
  %23 = load %struct.foo_link_hash_table*, %struct.foo_link_hash_table** %7, align 8
  %24 = getelementptr inbounds %struct.foo_link_hash_table, %struct.foo_link_hash_table* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i32*, i32** %9, align 8
  %27 = load %struct.foo_link_info*, %struct.foo_link_info** %6, align 8
  %28 = call i32 @foo_create_got_section(i32* noundef %26, %struct.foo_link_info* noundef %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32* null, i32** %4, align 8
  br label %37

31:                                               ; preds = %25
  %32 = load %struct.foo_link_hash_table*, %struct.foo_link_hash_table** %7, align 8
  %33 = getelementptr inbounds %struct.foo_link_hash_table, %struct.foo_link_hash_table* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  br label %35

35:                                               ; preds = %31, %3
  %36 = load i32*, i32** %8, align 8
  store i32* %36, i32** %4, align 8
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32*, i32** %4, align 8
  ret i32* %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct.foo_link_hash_table* @hash, %struct.foo_link_hash_table** getelementptr inbounds (%struct.foo_link_info, %struct.foo_link_info* @link_info, i32 0, i32 0), align 8
  %2 = call i32* @elf64_ia64_check_relocs(i32* noundef @abfd, %struct.foo_link_info* noundef @link_info)
  %3 = icmp ne i32* %2, @abfd
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  ret i32 0
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

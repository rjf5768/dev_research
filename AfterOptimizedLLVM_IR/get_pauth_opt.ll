; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/get_pauth.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/get_pauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfs_auth_info = type { [100 x i8], [250 x i8] }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }

@get_pauth.no_auth_st = internal global %struct.pfs_auth_info zeroinitializer, align 1
@get_pauth.no_auth = internal global %struct.pfs_auth_info* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"UNAUTHENTICATED\00", align 1
@pfs_enable = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"nobody\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.pfs_auth_info* @get_pauth(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  %6 = icmp eq %struct.pfs_auth_info* %5, null
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  store %struct.pfs_auth_info* @get_pauth.no_auth_st, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  %8 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  %9 = getelementptr inbounds %struct.pfs_auth_info, %struct.pfs_auth_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %11 = call i8* @strcpy(i8* noundef %10, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @pfs_enable, align 4
  store i32 %12, i32* %4, align 4
  store i32 0, i32* @pfs_enable, align 4
  %13 = call i32 @getuid() #3
  %14 = call %struct.passwd* @getpwuid(i32 noundef %13)
  store %struct.passwd* %14, %struct.passwd** %3, align 8
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* @pfs_enable, align 4
  %16 = load %struct.passwd*, %struct.passwd** %3, align 8
  %17 = icmp eq %struct.passwd* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %7
  %19 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  %20 = getelementptr inbounds %struct.pfs_auth_info, %struct.pfs_auth_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds [250 x i8], [250 x i8]* %20, i64 0, i64 0
  %22 = call i8* @strcpy(i8* noundef %21, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %31

23:                                               ; preds = %7
  %24 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  %25 = getelementptr inbounds %struct.pfs_auth_info, %struct.pfs_auth_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds [250 x i8], [250 x i8]* %25, i64 0, i64 0
  %27 = load %struct.passwd*, %struct.passwd** %3, align 8
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @strcpy(i8* noundef %26, i8* noundef %29)
  br label %31

31:                                               ; preds = %23, %18
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  ret %struct.pfs_auth_info* %33
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

declare dso_local %struct.passwd* @getpwuid(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @getuid() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

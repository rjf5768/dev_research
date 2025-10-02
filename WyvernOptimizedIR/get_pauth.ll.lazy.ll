; ModuleID = './get_pauth.ll'
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
  %2 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  %3 = icmp eq %struct.pfs_auth_info* %2, null
  br i1 %3, label %4, label %19

4:                                                ; preds = %1
  store %struct.pfs_auth_info* @get_pauth.no_auth_st, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) getelementptr inbounds (%struct.pfs_auth_info, %struct.pfs_auth_info* @get_pauth.no_auth_st, i64 0, i32 0, i64 0), i8* noundef nonnull align 1 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 16, i1 false) #4
  %5 = load i32, i32* @pfs_enable, align 4
  store i32 0, i32* @pfs_enable, align 4
  %6 = call i32 @getuid() #4
  %7 = call %struct.passwd* @getpwuid(i32 noundef %6) #4
  store i32 %5, i32* @pfs_enable, align 4
  %8 = icmp eq %struct.passwd* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  %11 = getelementptr inbounds %struct.pfs_auth_info, %struct.pfs_auth_info* %10, i64 0, i32 1, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7) %11, i8* noundef nonnull align 1 dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 7, i1 false) #4
  br label %18

12:                                               ; preds = %4
  %13 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  %14 = getelementptr inbounds %struct.pfs_auth_info, %struct.pfs_auth_info* %13, i64 0, i32 1, i64 0
  %15 = getelementptr inbounds %struct.passwd, %struct.passwd* %7, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @strcpy(i8* noundef nonnull %14, i8* noundef nonnull dereferenceable(1) %16) #4
  br label %18

18:                                               ; preds = %12, %9
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.pfs_auth_info*, %struct.pfs_auth_info** @get_pauth.no_auth, align 8
  ret %struct.pfs_auth_info* %20
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

declare dso_local %struct.passwd* @getpwuid(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @getuid() #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

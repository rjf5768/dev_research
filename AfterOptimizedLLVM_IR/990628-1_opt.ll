; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990628-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990628-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_record = type { i32, [100 x i32] }
%struct.anon = type { i64 }

@fetch.fetch_count = internal global i32 0, align 4
@data_tmp = dso_local global %struct.data_record zeroinitializer, align 4
@sqlca = dso_local global %struct.anon zeroinitializer, align 8
@data_ptr = dso_local global %struct.data_record* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @num_records() #0 {
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fetch() #0 {
  call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (%struct.data_record* @data_tmp to i8*), i8 85, i64 404, i1 false)
  %1 = load i32, i32* @fetch.fetch_count, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @fetch.fetch_count, align 4
  %3 = icmp sgt i32 %2, 1
  %4 = zext i1 %3 to i64
  %5 = select i1 %3, i32 100, i32 0
  %6 = sext i32 %5 to i64
  store i64 %6, i64* getelementptr inbounds (%struct.anon, %struct.anon* @sqlca, i32 0, i32 0), align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @load_data() #0 {
  %1 = alloca %struct.data_record*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @num_records()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 404
  %7 = call noalias i8* @malloc(i64 noundef %6) #5
  %8 = bitcast i8* %7 to %struct.data_record*
  store %struct.data_record* %8, %struct.data_record** @data_ptr, align 8
  %9 = load %struct.data_record*, %struct.data_record** @data_ptr, align 8
  %10 = bitcast %struct.data_record* %9 to i8*
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 404
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 -86, i64 %13, i1 false)
  call void @fetch()
  %14 = load %struct.data_record*, %struct.data_record** @data_ptr, align 8
  store %struct.data_record* %14, %struct.data_record** %1, align 8
  br label %15

15:                                               ; preds = %18, %0
  %16 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @sqlca, i32 0, i32 0), align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.data_record*, %struct.data_record** %1, align 8
  %20 = getelementptr inbounds %struct.data_record, %struct.data_record* %19, i32 1
  store %struct.data_record* %20, %struct.data_record** %1, align 8
  %21 = bitcast %struct.data_record* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.data_record* @data_tmp to i8*), i64 404, i1 false)
  call void @fetch()
  br label %15, !llvm.loop !4

22:                                               ; preds = %15
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @load_data()
  %2 = load %struct.data_record*, %struct.data_record** @data_ptr, align 8
  %3 = getelementptr inbounds %struct.data_record, %struct.data_record* %2, i64 0
  %4 = getelementptr inbounds %struct.data_record, %struct.data_record* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 1431655765
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #6
  unreachable

8:                                                ; preds = %0
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}

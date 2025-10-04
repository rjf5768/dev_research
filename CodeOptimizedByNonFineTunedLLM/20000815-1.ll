; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000815-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000815-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { i8*, %struct.table_elt*, %struct.table_elt*, %struct.table_elt*, %struct.table_elt*, %struct.table_elt*, %struct.table_elt*, i32, i32, i8, i8, i8, i8 }
%struct.write_data = type { i8, [3 x i8] }

@table = internal global [32 x %struct.table_elt*] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @invalidate_memory(%struct.write_data* noundef %0) #0 {
  %2 = alloca %struct.write_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.table_elt*, align 8
  %5 = alloca %struct.table_elt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.write_data* %0, %struct.write_data** %2, align 8
  %8 = load %struct.write_data*, %struct.write_data** %2, align 8
  %9 = bitcast %struct.write_data* %8 to i8*
  %10 = load i8, i8* %9, align 4
  %11 = shl i8 %10, 4
  %12 = ashr i8 %11, 7
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.write_data*, %struct.write_data** %2, align 8
  %15 = bitcast %struct.write_data* %14 to i8*
  %16 = load i8, i8* %15, align 4
  %17 = shl i8 %16, 5
  %18 = ashr i8 %17, 7
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %65, %1
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 31
  br i1 %22, label %23, label %68

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32 x %struct.table_elt*], [32 x %struct.table_elt*]* @table, i64 0, i64 %25
  %27 = load %struct.table_elt*, %struct.table_elt** %26, align 8
  store %struct.table_elt* %27, %struct.table_elt** %4, align 8
  br label %28

28:                                               ; preds = %62, %23
  %29 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %30 = icmp ne %struct.table_elt* %29, null
  br i1 %30, label %31, label %64

31:                                               ; preds = %28
  %32 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %33 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %32, i32 0, i32 1
  %34 = load %struct.table_elt*, %struct.table_elt** %33, align 8
  store %struct.table_elt* %34, %struct.table_elt** %5, align 8
  %35 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %36 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %35, i32 0, i32 9
  %37 = load i8, i8* %36, align 8
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %48 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %47, i32 0, i32 10
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46, %43
  %53 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %54 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @cse_rtx_addr_varies_p(i8* noundef %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %46, %40
  %59 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %60 = load i32, i32* %3, align 4
  call void @remove_from_table(%struct.table_elt* noundef %59, i32 noundef %60)
  br label %61

61:                                               ; preds = %58, %52, %31
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.table_elt*, %struct.table_elt** %5, align 8
  store %struct.table_elt* %63, %struct.table_elt** %4, align 8
  br label %28, !llvm.loop !4

64:                                               ; preds = %28
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %20, !llvm.loop !6

68:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cse_rtx_addr_varies_p(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @remove_from_table(%struct.table_elt* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.table_elt*, align 8
  %4 = alloca i32, align 4
  store %struct.table_elt* %0, %struct.table_elt** %3, align 8
  store i32 %1, i32* %4, align 4
  call void @abort() #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.write_data, align 4
  %3 = alloca %struct.table_elt, align 8
  store i32 0, i32* %1, align 4
  %4 = bitcast %struct.table_elt* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 72, i1 false)
  %5 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %3, i32 0, i32 9
  store i8 1, i8* %5, align 8
  store %struct.table_elt* %3, %struct.table_elt** getelementptr inbounds ([32 x %struct.table_elt*], [32 x %struct.table_elt*]* @table, i64 0, i64 0), align 16
  %6 = bitcast %struct.write_data* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = bitcast %struct.write_data* %2 to i8*
  %8 = load i8, i8* %7, align 4
  %9 = and i8 %8, -3
  %10 = or i8 %9, 2
  store i8 %10, i8* %7, align 4
  %11 = bitcast %struct.write_data* %2 to i8*
  %12 = load i8, i8* %11, align 4
  %13 = and i8 %12, -5
  %14 = or i8 %13, 4
  store i8 %14, i8* %11, align 4
  call void @invalidate_memory(%struct.write_data* noundef %2)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}

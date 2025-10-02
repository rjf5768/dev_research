; ModuleID = './20001203-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001203-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32, %struct.objfile*, i16, %struct.field* }
%struct.objfile = type { %struct.objfile*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i32, i32 }
%struct._obstack_chunk = type opaque
%struct.field = type { %union.field_location, i32, %struct.type*, i8* }
%union.field_location = type { i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.type* @create_array_type(%struct.type* noundef %0, %struct.type* nocapture noundef readonly %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = icmp eq %struct.type* %0, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = call %struct.type* @alloc_type()
  br label %8

8:                                                ; preds = %6, %2
  %.0 = phi %struct.type* [ %7, %6 ], [ %0, %2 ]
  call void @get_discrete_bounds(i64* noundef nonnull %3, i64* noundef nonnull %4)
  %9 = getelementptr inbounds %struct.type, %struct.type* %1, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = sub nsw i64 %11, %12
  %14 = trunc i64 %13 to i32
  %15 = add i32 %14, 1
  %16 = mul i32 %15, %10
  %17 = getelementptr inbounds %struct.type, %struct.type* %.0, i64 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.type, %struct.type* %.0, i64 0, i32 2
  store i16 1, i16* %18, align 8
  %19 = getelementptr inbounds %struct.type, %struct.type* %.0, i64 0, i32 1
  %20 = load %struct.objfile*, %struct.objfile** %19, align 8
  %.not = icmp eq %struct.objfile* %20, null
  br i1 %.not, label %78, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.type, %struct.type* %.0, i64 0, i32 1
  %23 = load %struct.objfile*, %struct.objfile** %22, align 8
  %24 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i64 0, i32 1, i32 4
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i64 0, i32 1, i32 3
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %25 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = icmp slt i64 %30, 32
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i64 0, i32 1
  call void @_obstack_newchunk(%struct.obstack* noundef nonnull %33, i32 noundef 32)
  br label %34

34:                                               ; preds = %32, %21
  %35 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i64 0, i32 1, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 32
  store i8* %37, i8** %35, align 8
  %38 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i64 0, i32 1, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i64 0, i32 1, i32 6
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %34
  %44 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i64 0, i32 1, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i64 0, i32 1, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = xor i32 %48, -1
  %52 = sext i32 %51 to i64
  %53 = and i64 %50, %52
  %54 = inttoptr i64 %53 to i8*
  %55 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i64 0, i32 1, i32 3
  store i8* %54, i8** %55, align 8
  %56 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i64 0, i32 1, i32 1
  %57 = bitcast %struct._obstack_chunk** %56 to i8**
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = sub i64 %53, %59
  %61 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i64 0, i32 1, i32 4
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i64 0, i32 1, i32 1
  %64 = bitcast %struct._obstack_chunk** %63 to i8**
  %65 = load i8*, i8** %64, align 8
  %66 = ptrtoint i8* %62 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = icmp sgt i64 %60, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %43
  %71 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i64 0, i32 1, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i64 0, i32 1, i32 3
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %70, %43
  %75 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i64 0, i32 1, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i64 0, i32 1, i32 2
  store i8* %76, i8** %77, align 8
  br label %80

78:                                               ; preds = %8
  %79 = call i8* @xmalloc(i32 noundef 32)
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i8* [ %39, %74 ], [ %79, %78 ]
  %82 = getelementptr inbounds %struct.type, %struct.type* %.0, i64 0, i32 3
  %83 = bitcast %struct.field** %82 to i8**
  store i8* %81, i8** %83, align 8
  ret %struct.type* %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local noalias nonnull %struct.type* @alloc_type() #1 {
  call void @abort() #6
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @get_discrete_bounds(i64* nocapture noundef writeonly %0, i64* nocapture noundef writeonly %1) #2 {
  store i64 0, i64* %0, align 8
  store i64 2, i64* %1, align 8
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @_obstack_newchunk(%struct.obstack* nocapture noundef readnone %0, i32 noundef %1) #1 {
  call void @abort() #6
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias i8* @xmalloc(i32 noundef %0) #3 {
  ret i8* null
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.type, align 8
  %2 = alloca %struct.type, align 8
  %3 = bitcast %struct.type* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %4 = bitcast %struct.type* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %5 = getelementptr inbounds %struct.type, %struct.type* %1, i64 0, i32 0
  store i32 4, i32* %5, align 8
  %6 = call %struct.type* @create_array_type(%struct.type* noundef nonnull %2, %struct.type* noundef nonnull %1)
  %7 = getelementptr inbounds %struct.type, %struct.type* %2, i64 0, i32 0
  %8 = load i32, i32* %7, align 8
  %.not = icmp eq i32 %8, 12
  br i1 %.not, label %10, label %9

9:                                                ; preds = %0
  call void @abort() #6
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %0
  call void @exit(i32 noundef 0) #6
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %10, %9
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}

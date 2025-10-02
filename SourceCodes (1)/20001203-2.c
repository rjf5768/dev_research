; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001203-2.c'
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
define dso_local %struct.type* @create_array_type(%struct.type* noundef %0, %struct.type* noundef %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.obstack*, align 8
  %8 = alloca %struct.obstack*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.obstack*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  store %struct.type* %1, %struct.type** %4, align 8
  %14 = load %struct.type*, %struct.type** %3, align 8
  %15 = icmp eq %struct.type* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call %struct.type* @alloc_type()
  store %struct.type* %17, %struct.type** %3, align 8
  br label %18

18:                                               ; preds = %16, %2
  call void @get_discrete_bounds(i64* noundef %5, i64* noundef %6)
  %19 = load %struct.type*, %struct.type** %4, align 8
  %20 = getelementptr inbounds %struct.type, %struct.type* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = zext i32 %21 to i64
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = sub nsw i64 %23, %24
  %26 = add nsw i64 %25, 1
  %27 = mul nsw i64 %22, %26
  %28 = trunc i64 %27 to i32
  %29 = load %struct.type*, %struct.type** %3, align 8
  %30 = getelementptr inbounds %struct.type, %struct.type* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.type*, %struct.type** %3, align 8
  %32 = getelementptr inbounds %struct.type, %struct.type* %31, i32 0, i32 2
  store i16 1, i16* %32, align 8
  %33 = load %struct.type*, %struct.type** %3, align 8
  %34 = getelementptr inbounds %struct.type, %struct.type* %33, i32 0, i32 1
  %35 = load %struct.objfile*, %struct.objfile** %34, align 8
  %36 = icmp ne %struct.objfile* %35, null
  br i1 %36, label %37, label %133

37:                                               ; preds = %18
  %38 = load %struct.type*, %struct.type** %3, align 8
  %39 = getelementptr inbounds %struct.type, %struct.type* %38, i32 0, i32 1
  %40 = load %struct.objfile*, %struct.objfile** %39, align 8
  %41 = getelementptr inbounds %struct.objfile, %struct.objfile* %40, i32 0, i32 1
  store %struct.obstack* %41, %struct.obstack** %7, align 8
  %42 = load %struct.obstack*, %struct.obstack** %7, align 8
  store %struct.obstack* %42, %struct.obstack** %8, align 8
  store i32 32, i32* %9, align 4
  %43 = load %struct.obstack*, %struct.obstack** %8, align 8
  %44 = getelementptr inbounds %struct.obstack, %struct.obstack* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.obstack*, %struct.obstack** %8, align 8
  %47 = getelementptr inbounds %struct.obstack, %struct.obstack* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %45 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %37
  %56 = load %struct.obstack*, %struct.obstack** %8, align 8
  %57 = load i32, i32* %9, align 4
  call void @_obstack_newchunk(%struct.obstack* noundef %56, i32 noundef %57)
  br label %58

58:                                               ; preds = %55, %37
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.obstack*, %struct.obstack** %8, align 8
  %61 = getelementptr inbounds %struct.obstack, %struct.obstack* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %61, align 8
  %65 = load %struct.obstack*, %struct.obstack** %7, align 8
  store %struct.obstack* %65, %struct.obstack** %11, align 8
  %66 = load %struct.obstack*, %struct.obstack** %11, align 8
  %67 = getelementptr inbounds %struct.obstack, %struct.obstack* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %12, align 8
  %69 = load %struct.obstack*, %struct.obstack** %11, align 8
  %70 = getelementptr inbounds %struct.obstack, %struct.obstack* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %58
  %75 = load %struct.obstack*, %struct.obstack** %11, align 8
  %76 = getelementptr inbounds %struct.obstack, %struct.obstack* %75, i32 0, i32 6
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %58
  %78 = load %struct.obstack*, %struct.obstack** %11, align 8
  %79 = getelementptr inbounds %struct.obstack, %struct.obstack* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = ptrtoint i8* %80 to i64
  %82 = sub i64 %81, 0
  %83 = load %struct.obstack*, %struct.obstack** %11, align 8
  %84 = getelementptr inbounds %struct.obstack, %struct.obstack* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %82, %86
  %88 = load %struct.obstack*, %struct.obstack** %11, align 8
  %89 = getelementptr inbounds %struct.obstack, %struct.obstack* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = xor i32 %90, -1
  %92 = sext i32 %91 to i64
  %93 = and i64 %87, %92
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.obstack*, %struct.obstack** %11, align 8
  %96 = getelementptr inbounds %struct.obstack, %struct.obstack* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load %struct.obstack*, %struct.obstack** %11, align 8
  %98 = getelementptr inbounds %struct.obstack, %struct.obstack* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.obstack*, %struct.obstack** %11, align 8
  %101 = getelementptr inbounds %struct.obstack, %struct.obstack* %100, i32 0, i32 1
  %102 = load %struct._obstack_chunk*, %struct._obstack_chunk** %101, align 8
  %103 = bitcast %struct._obstack_chunk* %102 to i8*
  %104 = ptrtoint i8* %99 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = load %struct.obstack*, %struct.obstack** %11, align 8
  %108 = getelementptr inbounds %struct.obstack, %struct.obstack* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.obstack*, %struct.obstack** %11, align 8
  %111 = getelementptr inbounds %struct.obstack, %struct.obstack* %110, i32 0, i32 1
  %112 = load %struct._obstack_chunk*, %struct._obstack_chunk** %111, align 8
  %113 = bitcast %struct._obstack_chunk* %112 to i8*
  %114 = ptrtoint i8* %109 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = icmp sgt i64 %106, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %77
  %119 = load %struct.obstack*, %struct.obstack** %11, align 8
  %120 = getelementptr inbounds %struct.obstack, %struct.obstack* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.obstack*, %struct.obstack** %11, align 8
  %123 = getelementptr inbounds %struct.obstack, %struct.obstack* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %118, %77
  %125 = load %struct.obstack*, %struct.obstack** %11, align 8
  %126 = getelementptr inbounds %struct.obstack, %struct.obstack* %125, i32 0, i32 3
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.obstack*, %struct.obstack** %11, align 8
  %129 = getelementptr inbounds %struct.obstack, %struct.obstack* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** %12, align 8
  store i8* %130, i8** %13, align 8
  %131 = load i8*, i8** %13, align 8
  store i8* %131, i8** %10, align 8
  %132 = load i8*, i8** %10, align 8
  br label %135

133:                                              ; preds = %18
  %134 = call i8* @xmalloc(i32 noundef 32)
  br label %135

135:                                              ; preds = %133, %124
  %136 = phi i8* [ %132, %124 ], [ %134, %133 ]
  %137 = bitcast i8* %136 to %struct.field*
  %138 = load %struct.type*, %struct.type** %3, align 8
  %139 = getelementptr inbounds %struct.type, %struct.type* %138, i32 0, i32 3
  store %struct.field* %137, %struct.field** %139, align 8
  %140 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %140
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.type* @alloc_type() #0 {
  call void @abort() #3
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_discrete_bounds(i64* noundef %0, i64* noundef %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load i64*, i64** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load i64*, i64** %4, align 8
  store i64 2, i64* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_obstack_newchunk(%struct.obstack* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.obstack*, align 8
  %4 = alloca i32, align 4
  store %struct.obstack* %0, %struct.obstack** %3, align 8
  store i32 %1, i32* %4, align 4
  call void @abort() #3
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @xmalloc(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret i8* null
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.type, align 8
  %3 = alloca %struct.type, align 8
  store i32 0, i32* %1, align 4
  %4 = bitcast %struct.type* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 32, i1 false)
  %5 = bitcast %struct.type* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 32, i1 false)
  %6 = getelementptr inbounds %struct.type, %struct.type* %2, i32 0, i32 0
  store i32 4, i32* %6, align 8
  %7 = call %struct.type* @create_array_type(%struct.type* noundef %3, %struct.type* noundef %2)
  %8 = getelementptr inbounds %struct.type, %struct.type* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 12
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  call void @abort() #3
  unreachable

12:                                               ; preds = %0
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

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

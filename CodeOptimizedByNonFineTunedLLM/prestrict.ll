; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/prestrict.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/prestrict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnode = type { i32, %struct.nnode*, %struct.list2* }
%struct.nnode = type { i32, i32, i16, i16 }
%struct.list2 = type { i32, %struct.list2* }
%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }

@pnodeArray = external dso_local global %struct.pnode*, align 8
@numnodes = external dso_local global i32, align 4
@pnodeAlength = external dso_local global i32, align 4
@gnodeArray = external dso_local global %struct.gnode**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @prestrict(i16* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tnode*, align 8
  %11 = alloca %struct.tnode*, align 8
  %12 = alloca %struct.nnode*, align 8
  %13 = alloca %struct.gnode*, align 8
  %14 = alloca %struct.gnode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i16* %0, i16** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %26 = load i16*, i16** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %26, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = sext i16 %30 to i32
  store i32 %31, i32* %17, align 4
  %32 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @numnodes, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.pnode, %struct.pnode* %32, i64 %36
  %38 = getelementptr inbounds %struct.pnode, %struct.pnode* %37, i32 0, i32 1
  %39 = load %struct.nnode*, %struct.nnode** %38, align 8
  store %struct.nnode* %39, %struct.nnode** %12, align 8
  store %struct.tnode* null, %struct.tnode** %10, align 8
  store i32 1, i32* %16, align 4
  br label %40

40:                                               ; preds = %68, %4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @numnodes, align 4
  %43 = load i32, i32* @pnodeAlength, align 4
  %44 = add nsw i32 %42, %43
  %45 = icmp sle i32 %41, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %40
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i32, i32* %16, align 4
  call void @tinsert(%struct.tnode** noundef %10, i32 noundef 0, i32 noundef %51)
  %52 = load %struct.nnode*, %struct.nnode** %12, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.nnode, %struct.nnode* %52, i64 %54
  %56 = getelementptr inbounds %struct.nnode, %struct.nnode* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load %struct.nnode*, %struct.nnode** %12, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.nnode, %struct.nnode* %57, i64 %59
  %61 = getelementptr inbounds %struct.nnode, %struct.nnode* %60, i32 0, i32 3
  store i16 0, i16* %61, align 2
  br label %68

62:                                               ; preds = %46
  %63 = load %struct.nnode*, %struct.nnode** %12, align 8
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.nnode, %struct.nnode* %63, i64 %65
  %67 = getelementptr inbounds %struct.nnode, %struct.nnode* %66, i32 0, i32 0
  store i32 1000000000, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %50
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %16, align 4
  br label %40, !llvm.loop !4

71:                                               ; preds = %40
  store i32 0, i32* %25, align 4
  br label %72

72:                                               ; preds = %156, %71
  call void @tpop(%struct.tnode** noundef %10, %struct.tnode** noundef %11, i32* noundef %19, i32* noundef %20)
  %73 = load %struct.tnode*, %struct.tnode** %11, align 8
  %74 = icmp eq %struct.tnode* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %157

76:                                               ; preds = %72
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  store i32 1, i32* %25, align 4
  br label %81

81:                                               ; preds = %85, %80
  call void @tpop(%struct.tnode** noundef %10, %struct.tnode** noundef %11, i32* noundef %19, i32* noundef %20)
  %82 = load %struct.tnode*, %struct.tnode** %11, align 8
  %83 = icmp eq %struct.tnode* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %86

85:                                               ; preds = %81
  br label %81

86:                                               ; preds = %84
  br label %157

87:                                               ; preds = %76
  %88 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.gnode*, %struct.gnode** %88, i64 %90
  %92 = load %struct.gnode*, %struct.gnode** %91, align 8
  store %struct.gnode* %92, %struct.gnode** %13, align 8
  br label %93

93:                                               ; preds = %152, %87
  %94 = load %struct.gnode*, %struct.gnode** %13, align 8
  %95 = icmp ne %struct.gnode* %94, null
  br i1 %95, label %96, label %156

96:                                               ; preds = %93
  %97 = load %struct.gnode*, %struct.gnode** %13, align 8
  %98 = getelementptr inbounds %struct.gnode, %struct.gnode* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load %struct.gnode*, %struct.gnode** %13, align 8
  %103 = getelementptr inbounds %struct.gnode, %struct.gnode* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %101, %96
  br label %152

107:                                              ; preds = %101
  %108 = load %struct.gnode*, %struct.gnode** %13, align 8
  %109 = getelementptr inbounds %struct.gnode, %struct.gnode* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %21, align 4
  %111 = load %struct.gnode*, %struct.gnode** %13, align 8
  %112 = getelementptr inbounds %struct.gnode, %struct.gnode* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %18, align 4
  %114 = load %struct.nnode*, %struct.nnode** %12, align 8
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.nnode, %struct.nnode* %114, i64 %116
  %118 = getelementptr inbounds %struct.nnode, %struct.nnode* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %21, align 4
  %122 = add nsw i32 %120, %121
  %123 = icmp sgt i32 %119, %122
  br i1 %123, label %124, label %151

124:                                              ; preds = %107
  %125 = load %struct.nnode*, %struct.nnode** %12, align 8
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.nnode, %struct.nnode* %125, i64 %127
  %129 = getelementptr inbounds %struct.nnode, %struct.nnode* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %18, align 4
  call void @tdelete(%struct.tnode** noundef %10, i32 noundef %130, i32 noundef %131)
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* %21, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* %18, align 4
  call void @tinsert(%struct.tnode** noundef %10, i32 noundef %134, i32 noundef %135)
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %21, align 4
  %138 = add nsw i32 %136, %137
  %139 = load %struct.nnode*, %struct.nnode** %12, align 8
  %140 = load i32, i32* %18, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.nnode, %struct.nnode* %139, i64 %141
  %143 = getelementptr inbounds %struct.nnode, %struct.nnode* %142, i32 0, i32 0
  store i32 %138, i32* %143, align 4
  %144 = load i32, i32* %20, align 4
  %145 = trunc i32 %144 to i16
  %146 = load %struct.nnode*, %struct.nnode** %12, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.nnode, %struct.nnode* %146, i64 %148
  %150 = getelementptr inbounds %struct.nnode, %struct.nnode* %149, i32 0, i32 3
  store i16 %145, i16* %150, align 2
  br label %151

151:                                              ; preds = %124, %107
  br label %152

152:                                              ; preds = %151, %106
  %153 = load %struct.gnode*, %struct.gnode** %13, align 8
  %154 = getelementptr inbounds %struct.gnode, %struct.gnode* %153, i32 0, i32 7
  %155 = load %struct.gnode*, %struct.gnode** %154, align 8
  store %struct.gnode* %155, %struct.gnode** %13, align 8
  br label %93, !llvm.loop !6

156:                                              ; preds = %93
  br label %72

157:                                              ; preds = %86, %75
  %158 = load i32, i32* %25, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 -1, i32* %5, align 4
  br label %207

161:                                              ; preds = %157
  store i32 0, i32* %24, align 4
  store i32 1, i32* %15, align 4
  br label %162

162:                                              ; preds = %202, %161
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %205

166:                                              ; preds = %162
  %167 = load i16*, i16** %6, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i16, i16* %167, i64 %169
  %171 = load i16, i16* %170, align 2
  %172 = sext i16 %171 to i32
  store i32 %172, i32* %22, align 4
  %173 = load i16*, i16** %6, align 8
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i16, i16* %173, i64 %176
  %178 = load i16, i16* %177, align 2
  %179 = sext i16 %178 to i32
  store i32 %179, i32* %23, align 4
  %180 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %181 = load i32, i32* %22, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.gnode*, %struct.gnode** %180, i64 %182
  %184 = load %struct.gnode*, %struct.gnode** %183, align 8
  store %struct.gnode* %184, %struct.gnode** %14, align 8
  br label %185

185:                                              ; preds = %197, %166
  %186 = load %struct.gnode*, %struct.gnode** %14, align 8
  %187 = getelementptr inbounds %struct.gnode, %struct.gnode* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %23, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %185
  %192 = load %struct.gnode*, %struct.gnode** %14, align 8
  %193 = getelementptr inbounds %struct.gnode, %struct.gnode* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %24, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %24, align 4
  br label %201

197:                                              ; preds = %185
  %198 = load %struct.gnode*, %struct.gnode** %14, align 8
  %199 = getelementptr inbounds %struct.gnode, %struct.gnode* %198, i32 0, i32 7
  %200 = load %struct.gnode*, %struct.gnode** %199, align 8
  store %struct.gnode* %200, %struct.gnode** %14, align 8
  br label %185

201:                                              ; preds = %191
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %15, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %15, align 4
  br label %162, !llvm.loop !7

205:                                              ; preds = %162
  %206 = load i32, i32* %24, align 4
  store i32 %206, i32* %5, align 4
  br label %207

207:                                              ; preds = %205, %160
  %208 = load i32, i32* %5, align 4
  ret i32 %208
}

declare dso_local void @tinsert(%struct.tnode** noundef, i32 noundef, i32 noundef) #1

declare dso_local void @tpop(%struct.tnode** noundef, %struct.tnode** noundef, i32* noundef, i32* noundef) #1

declare dso_local void @tdelete(%struct.tnode** noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}

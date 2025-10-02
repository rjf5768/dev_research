; ModuleID = './vpath.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/vpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpath = type { %struct.vpath*, i8*, i8*, i32, i8**, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.file = type { %struct.file*, i8*, %struct.dep*, %struct.commands*, i8*, %struct.dep*, i64, %struct.file*, %struct.file*, %struct.variable_set_list*, %struct.file*, i16, i16 }
%struct.commands = type opaque
%struct.dep = type opaque
%struct.variable_set_list = type { %struct.variable_set_list*, %struct.variable_set* }
%struct.variable_set = type { %struct.variable**, i32 }
%struct.variable = type { %struct.variable*, i8*, i8*, i8 }

@vpaths = internal global %struct.vpath* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"$(VPATH)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@general_vpath = internal global %struct.vpath* null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"\0A# VPATH Search Paths\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"vpath %s \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"# No `vpath' search paths.\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\0A# %u `vpath' search paths.\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"\0A# No general (`VPATH' variable) search path.\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"\0A# General (`VPATH' variable) search path:\0A# \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @build_vpath_lists() #0 {
  %1 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  br label %2

2:                                                ; preds = %7, %0
  %.01 = phi %struct.vpath* [ %1, %0 ], [ %5, %7 ]
  %.0 = phi %struct.vpath* [ null, %0 ], [ %.01, %7 ]
  %.not = icmp eq %struct.vpath* %.01, null
  br i1 %.not, label %8, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.vpath, %struct.vpath* %.01, i64 0, i32 0
  %5 = load %struct.vpath*, %struct.vpath** %4, align 8
  %6 = getelementptr inbounds %struct.vpath, %struct.vpath* %.01, i64 0, i32 0
  store %struct.vpath* %.0, %struct.vpath** %6, align 8
  br label %7

7:                                                ; preds = %3
  br label %2, !llvm.loop !4

8:                                                ; preds = %2
  store %struct.vpath* %.0, %struct.vpath** @vpaths, align 8
  %9 = call i8* (i8*, ...) bitcast (i8* (...)* @variable_expand to i8* (i8*, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #6
  %10 = load i8, i8* %9, align 1
  %.not2 = icmp eq i8 %10, 0
  br i1 %.not2, label %20, label %11

11:                                               ; preds = %8
  call void @construct_vpath_list(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %9)
  %12 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  %13 = icmp eq %struct.vpath* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store %struct.vpath* null, %struct.vpath** @general_vpath, align 8
  br label %19

15:                                               ; preds = %11
  %16 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  store %struct.vpath* %16, %struct.vpath** @general_vpath, align 8
  %17 = getelementptr inbounds %struct.vpath, %struct.vpath* %16, i64 0, i32 0
  %18 = load %struct.vpath*, %struct.vpath** %17, align 8
  store %struct.vpath* %18, %struct.vpath** @vpaths, align 8
  br label %19

19:                                               ; preds = %15, %14
  br label %20

20:                                               ; preds = %19, %8
  ret void
}

declare dso_local i8* @variable_expand(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @construct_vpath_list(i8* noundef %0, i8* noundef %1) #0 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %4 = call i64 @strlen(i8* noundef nonnull %0) #7
  %5 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef nonnull %0, i64 noundef %4) #6
  %6 = call i8* (i8*, ...) bitcast (i8* (...)* @find_percent to i8* (i8*, ...)*)(i8* noundef %5) #6
  br label %7

7:                                                ; preds = %3, %2
  %.011 = phi i8* [ %6, %3 ], [ undef, %2 ]
  %.0 = phi i8* [ %5, %3 ], [ %0, %2 ]
  %8 = icmp eq i8* %1, null
  br i1 %8, label %9, label %75

9:                                                ; preds = %7
  %10 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  br label %11

11:                                               ; preds = %69, %9
  %.013 = phi %struct.vpath* [ %10, %9 ], [ %.012, %69 ]
  %.012 = phi %struct.vpath* [ %10, %9 ], [ %71, %69 ]
  %.not26 = icmp eq %struct.vpath* %.012, null
  br i1 %.not26, label %72, label %12

12:                                               ; preds = %11
  %13 = icmp eq i8* %.0, null
  br i1 %13, label %51, label %14

14:                                               ; preds = %12
  %15 = icmp eq i8* %.011, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.vpath, %struct.vpath* %.012, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %16, %14
  %21 = ptrtoint i8* %.011 to i64
  %22 = ptrtoint i8* %.0 to i64
  %23 = sub i64 %21, %22
  %24 = getelementptr inbounds %struct.vpath, %struct.vpath* %.012, i64 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %struct.vpath, %struct.vpath* %.012, i64 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %25 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = icmp eq i64 %23, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %20, %16
  %33 = getelementptr inbounds %struct.vpath, %struct.vpath* %.012, i64 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %.0, %34
  br i1 %35, label %51, label %36

36:                                               ; preds = %32
  %37 = load i8, i8* %.0, align 1
  %38 = getelementptr inbounds %struct.vpath, %struct.vpath* %.012, i64 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp eq i8 %37, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load i8, i8* %.0, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, i8* %.0, i64 1
  %47 = getelementptr inbounds %struct.vpath, %struct.vpath* %.012, i64 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = call i32 @strcmp(i8* noundef nonnull %46, i8* noundef nonnull %49) #7
  %.not28 = icmp eq i32 %50, 0
  br i1 %.not28, label %51, label %68

51:                                               ; preds = %45, %42, %32, %12
  %52 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  %53 = icmp eq %struct.vpath* %.013, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.vpath, %struct.vpath* %.012, i64 0, i32 0
  %56 = load %struct.vpath*, %struct.vpath** %55, align 8
  store %struct.vpath* %56, %struct.vpath** @vpaths, align 8
  br label %61

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.vpath, %struct.vpath* %.012, i64 0, i32 0
  %59 = load %struct.vpath*, %struct.vpath** %58, align 8
  %60 = getelementptr inbounds %struct.vpath, %struct.vpath* %.013, i64 0, i32 0
  store %struct.vpath* %59, %struct.vpath** %60, align 8
  br label %61

61:                                               ; preds = %57, %54
  %62 = getelementptr inbounds %struct.vpath, %struct.vpath* %.012, i64 0, i32 1
  %63 = load i8*, i8** %62, align 8
  call void @free(i8* noundef %63) #6
  %64 = getelementptr inbounds %struct.vpath, %struct.vpath* %.012, i64 0, i32 4
  %65 = bitcast i8*** %64 to i8**
  %66 = load i8*, i8** %65, align 8
  call void @free(i8* noundef %66) #6
  %67 = bitcast %struct.vpath* %.012 to i8*
  call void @free(i8* noundef %67) #6
  br label %68

68:                                               ; preds = %61, %45, %36, %20
  br label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.vpath, %struct.vpath* %.012, i64 0, i32 0
  %71 = load %struct.vpath*, %struct.vpath** %70, align 8
  br label %11, !llvm.loop !6

72:                                               ; preds = %11
  %.not27 = icmp eq i8* %.0, null
  br i1 %.not27, label %74, label %73

73:                                               ; preds = %72
  call void @free(i8* noundef %.0) #6
  br label %74

74:                                               ; preds = %73, %72
  br label %182

75:                                               ; preds = %7
  br label %76

76:                                               ; preds = %79, %75
  %.03 = phi i8* [ %1, %75 ], [ %80, %79 ]
  %77 = load i8, i8* %.03, align 1
  %78 = icmp eq i8 %77, 58
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = getelementptr inbounds i8, i8* %.03, i64 1
  br label %76, !llvm.loop !7

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %90, %81
  %.09 = phi i32 [ 2, %81 ], [ %.110, %90 ]
  %.14 = phi i8* [ %.03, %81 ], [ %85, %90 ]
  %83 = load i8, i8* %.14, align 1
  %.not20 = icmp eq i8 %83, 0
  br i1 %.not20, label %91, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds i8, i8* %.14, i64 1
  %86 = load i8, i8* %.14, align 1
  %87 = icmp eq i8 %86, 58
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = add i32 %.09, 1
  br label %90

90:                                               ; preds = %88, %84
  %.110 = phi i32 [ %89, %88 ], [ %.09, %84 ]
  br label %82, !llvm.loop !8

91:                                               ; preds = %82
  %92 = zext i32 %.09 to i64
  %93 = shl nuw nsw i64 %92, 3
  %94 = call i8* (i64, ...) bitcast (i8* (...)* @xmalloc to i8* (i64, ...)*)(i64 noundef %93) #6
  %95 = bitcast i8* %94 to i8**
  br label %.outer

.outer:                                           ; preds = %152, %91
  %.06.ph = phi i32 [ %.28, %152 ], [ 0, %91 ]
  %.2.ph = phi i8* [ %.4, %152 ], [ %1, %91 ]
  %.02.ph = phi i32 [ %.1, %152 ], [ 0, %91 ]
  br label %96

96:                                               ; preds = %.outer, %139
  %.2 = phi i8* [ %.4, %139 ], [ %.2.ph, %.outer ]
  %97 = load i8, i8* %.2, align 1
  %.not21 = icmp eq i8 %97, 0
  br i1 %.not21, label %.loopexit, label %98

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %106, %98
  %.3 = phi i8* [ %.2, %98 ], [ %107, %106 ]
  %100 = load i8, i8* %.3, align 1
  %.not23 = icmp eq i8 %100, 0
  br i1 %.not23, label %104, label %101

101:                                              ; preds = %99
  %102 = load i8, i8* %.3, align 1
  %103 = icmp eq i8 %102, 58
  br label %104

104:                                              ; preds = %101, %99
  %105 = phi i1 [ false, %99 ], [ %103, %101 ]
  br i1 %105, label %106, label %108

106:                                              ; preds = %104
  %107 = getelementptr inbounds i8, i8* %.3, i64 1
  br label %99, !llvm.loop !9

108:                                              ; preds = %104
  %109 = load i8, i8* %.3, align 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %153

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %120, %112
  %.4 = phi i8* [ %.3, %112 ], [ %121, %120 ]
  %114 = load i8, i8* %.4, align 1
  %.not24 = icmp eq i8 %114, 0
  br i1 %.not24, label %118, label %115

115:                                              ; preds = %113
  %116 = load i8, i8* %.4, align 1
  %117 = icmp ne i8 %116, 58
  br label %118

118:                                              ; preds = %115, %113
  %119 = phi i1 [ false, %113 ], [ %117, %115 ]
  br i1 %119, label %120, label %122

120:                                              ; preds = %118
  %121 = getelementptr inbounds i8, i8* %.4, i64 1
  br label %113, !llvm.loop !10

122:                                              ; preds = %118
  %123 = ptrtoint i8* %.4 to i64
  %124 = ptrtoint i8* %.3 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  %127 = icmp ugt i32 %126, 1
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = getelementptr inbounds i8, i8* %.4, i64 -1
  %130 = load i8, i8* %129, align 1
  %131 = icmp eq i8 %130, 47
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = add i32 %126, -1
  br label %134

134:                                              ; preds = %132, %128, %122
  %.01 = phi i32 [ %133, %132 ], [ %126, %128 ], [ %126, %122 ]
  %135 = icmp eq i32 %.01, 1
  br i1 %135, label %136, label %140

136:                                              ; preds = %134
  %137 = load i8, i8* %.3, align 1
  %138 = icmp eq i8 %137, 46
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %96, !llvm.loop !11

140:                                              ; preds = %136, %134
  %141 = call i8* (i8*, i32, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i32, ...)*)(i8* noundef nonnull %.3, i32 noundef %.01) #6
  %142 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @dir_file_exists_p to i32 (i8*, i8*, ...)*)(i8* noundef %141, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #6
  %.not25 = icmp eq i32 %142, 0
  br i1 %.not25, label %151, label %143

143:                                              ; preds = %140
  %144 = call i8* (i8*, ...) bitcast (i8* (...)* @dir_name to i8* (i8*, ...)*)(i8* noundef %141) #6
  %145 = add i32 %.02.ph, 1
  %146 = zext i32 %.02.ph to i64
  %147 = getelementptr inbounds i8*, i8** %95, i64 %146
  store i8* %144, i8** %147, align 8
  call void @free(i8* noundef %141) #6
  %148 = icmp ugt i32 %.01, %.06.ph
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %150

150:                                              ; preds = %149, %143
  %.17 = phi i32 [ %.01, %149 ], [ %.06.ph, %143 ]
  br label %152

151:                                              ; preds = %140
  call void @free(i8* noundef %141) #6
  br label %152

152:                                              ; preds = %151, %150
  %.28 = phi i32 [ %.17, %150 ], [ %.06.ph, %151 ]
  %.1 = phi i32 [ %145, %150 ], [ %.02.ph, %151 ]
  br label %.outer, !llvm.loop !11

.loopexit:                                        ; preds = %96
  br label %153

153:                                              ; preds = %.loopexit, %111
  %.not22 = icmp eq i32 %.02.ph, 0
  br i1 %.not22, label %181, label %154

154:                                              ; preds = %153
  %155 = add i32 %.09, -1
  %156 = icmp ult i32 %.02.ph, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = add i32 %.02.ph, 1
  %159 = zext i32 %158 to i64
  %160 = shl nuw nsw i64 %159, 3
  %161 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @xrealloc to i8* (i8*, i64, ...)*)(i8* noundef %94, i64 noundef %160) #6
  %162 = bitcast i8* %161 to i8**
  br label %163

163:                                              ; preds = %157, %154
  %.05 = phi i8** [ %162, %157 ], [ %95, %154 ]
  %164 = zext i32 %.02.ph to i64
  %165 = getelementptr inbounds i8*, i8** %.05, i64 %164
  store i8* null, i8** %165, align 8
  %166 = call i8* (i64, ...) bitcast (i8* (...)* @xmalloc to i8* (i64, ...)*)(i64 noundef 48) #6
  %167 = getelementptr inbounds i8, i8* %166, i64 32
  %168 = bitcast i8* %167 to i8***
  store i8** %.05, i8*** %168, align 8
  %169 = getelementptr inbounds i8, i8* %166, i64 40
  %170 = bitcast i8* %169 to i32*
  store i32 %.06.ph, i32* %170, align 8
  %171 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  %172 = bitcast i8* %166 to %struct.vpath**
  store %struct.vpath* %171, %struct.vpath** %172, align 8
  store i8* %166, i8** bitcast (%struct.vpath** @vpaths to i8**), align 8
  %173 = getelementptr inbounds i8, i8* %166, i64 8
  %174 = bitcast i8* %173 to i8**
  store i8* %.0, i8** %174, align 8
  %175 = getelementptr inbounds i8, i8* %166, i64 16
  %176 = bitcast i8* %175 to i8**
  store i8* %.011, i8** %176, align 8
  %177 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.0) #7
  %178 = trunc i64 %177 to i32
  %179 = getelementptr inbounds i8, i8* %166, i64 24
  %180 = bitcast i8* %179 to i32*
  store i32 %178, i32* %180, align 8
  br label %182

181:                                              ; preds = %153
  call void @free(i8* noundef %94) #6
  br label %182

182:                                              ; preds = %181, %163, %74
  ret void
}

declare dso_local i8* @savestring(...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i8* @find_percent(...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

declare dso_local i8* @xmalloc(...) #1

declare dso_local i32 @dir_file_exists_p(...) #1

declare dso_local i8* @dir_name(...) #1

declare dso_local i8* @xrealloc(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vpath_search(i8** nocapture noundef %0) #0 {
  %2 = load i8*, i8** %0, align 8
  %3 = load i8, i8* %2, align 1
  %4 = icmp eq i8 %3, 47
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  %7 = icmp eq %struct.vpath* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load %struct.vpath*, %struct.vpath** @general_vpath, align 8
  %10 = icmp eq %struct.vpath* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %1
  br label %35

12:                                               ; preds = %8, %5
  br label %13

13:                                               ; preds = %26, %12
  %.01.in = phi %struct.vpath** [ @vpaths, %12 ], [ %27, %26 ]
  %.01 = load %struct.vpath*, %struct.vpath** %.01.in, align 8
  %.not = icmp eq %struct.vpath* %.01, null
  br i1 %.not, label %28, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.vpath, %struct.vpath* %.01, i64 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.vpath, %struct.vpath* %.01, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %0, align 8
  %20 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @pattern_matches to i32 (i8*, i8*, i8*, ...)*)(i8* noundef %16, i8* noundef %18, i8* noundef %19) #6
  %.not4 = icmp eq i32 %20, 0
  br i1 %.not4, label %25, label %21

21:                                               ; preds = %14
  %22 = call i32 @selective_vpath_search(%struct.vpath* noundef nonnull %.01, i8** noundef nonnull %0)
  %.not5 = icmp eq i32 %22, 0
  br i1 %.not5, label %24, label %23

23:                                               ; preds = %21
  br label %35

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %14
  br label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.vpath, %struct.vpath* %.01, i64 0, i32 0
  br label %13, !llvm.loop !12

28:                                               ; preds = %13
  %29 = load %struct.vpath*, %struct.vpath** @general_vpath, align 8
  %.not2 = icmp eq %struct.vpath* %29, null
  br i1 %.not2, label %34, label %30

30:                                               ; preds = %28
  %31 = load %struct.vpath*, %struct.vpath** @general_vpath, align 8
  %32 = call i32 @selective_vpath_search(%struct.vpath* noundef %31, i8** noundef nonnull %0)
  %.not3 = icmp eq i32 %32, 0
  br i1 %.not3, label %34, label %33

33:                                               ; preds = %30
  br label %35

34:                                               ; preds = %30, %28
  br label %35

35:                                               ; preds = %34, %33, %23, %11
  %.0 = phi i32 [ 0, %11 ], [ 1, %23 ], [ 1, %33 ], [ 0, %34 ]
  ret i32 %.0
}

declare dso_local i32 @pattern_matches(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_vpath_data_base() #0 {
  %1 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %2

2:                                                ; preds = %30, %0
  %.01.in = phi %struct.vpath** [ @vpaths, %0 ], [ %31, %30 ]
  %.0 = phi i32 [ 0, %0 ], [ %4, %30 ]
  %.01 = load %struct.vpath*, %struct.vpath** %.01.in, align 8
  %.not = icmp eq %struct.vpath* %.01, null
  br i1 %.not, label %32, label %3

3:                                                ; preds = %2
  %4 = add i32 %.0, 1
  %5 = getelementptr inbounds %struct.vpath, %struct.vpath* %.01, i64 0, i32 1
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* noundef %6) #6
  br label %8

8:                                                ; preds = %27, %3
  %.02 = phi i32 [ 0, %3 ], [ %28, %27 ]
  %9 = getelementptr inbounds %struct.vpath, %struct.vpath* %.01, i64 0, i32 4
  %10 = load i8**, i8*** %9, align 8
  %11 = zext i32 %.02 to i64
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  %13 = load i8*, i8** %12, align 8
  %.not5 = icmp eq i8* %13, null
  br i1 %.not5, label %29, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.vpath, %struct.vpath* %.01, i64 0, i32 4
  %16 = load i8**, i8*** %15, align 8
  %17 = zext i32 %.02 to i64
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = add i32 %.02, 1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %16, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  %25 = select i1 %24, i32 10, i32 58
  %26 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef %19, i32 noundef %25) #6
  br label %27

27:                                               ; preds = %14
  %28 = add i32 %.02, 1
  br label %8, !llvm.loop !13

29:                                               ; preds = %8
  br label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.vpath, %struct.vpath* %.01, i64 0, i32 0
  br label %2, !llvm.loop !14

32:                                               ; preds = %2
  %33 = load %struct.vpath*, %struct.vpath** @vpaths, align 8
  %34 = icmp eq %struct.vpath* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)) #6
  br label %39

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 noundef %.0) #6
  br label %39

39:                                               ; preds = %37, %35
  %40 = load %struct.vpath*, %struct.vpath** @general_vpath, align 8
  %41 = icmp eq %struct.vpath* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0)) #6
  br label %68

44:                                               ; preds = %39
  %45 = load %struct.vpath*, %struct.vpath** @general_vpath, align 8
  %46 = getelementptr inbounds %struct.vpath, %struct.vpath* %45, i64 0, i32 4
  %47 = load i8**, i8*** %46, align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %49 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %48)
  br label %50

50:                                               ; preds = %65, %44
  %.03 = phi i32 [ 0, %44 ], [ %66, %65 ]
  %51 = zext i32 %.03 to i64
  %52 = getelementptr inbounds i8*, i8** %47, i64 %51
  %53 = load i8*, i8** %52, align 8
  %.not4 = icmp eq i8* %53, null
  br i1 %.not4, label %67, label %54

54:                                               ; preds = %50
  %55 = zext i32 %.03 to i64
  %56 = getelementptr inbounds i8*, i8** %47, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = add i32 %.03, 1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %47, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %61, null
  %63 = select i1 %62, i32 10, i32 58
  %64 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef %57, i32 noundef %63) #6
  br label %65

65:                                               ; preds = %54
  %66 = add i32 %.03, 1
  br label %50, !llvm.loop !15

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67, %42
  ret void
}

declare dso_local i32 @puts(i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @selective_vpath_search(%struct.vpath* nocapture noundef readonly %0, i8** nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vpath, %struct.vpath* %0, i64 0, i32 4
  %4 = load i8**, i8*** %3, align 8
  %5 = getelementptr inbounds %struct.vpath, %struct.vpath* %0, i64 0, i32 5
  %6 = load i32, i32* %5, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = call %struct.file* (i8*, ...) bitcast (%struct.file* (...)* @lookup_file to %struct.file* (i8*, ...)*)(i8* noundef %7) #6
  %9 = icmp eq %struct.file* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.file, %struct.file* %8, i64 0, i32 12
  %12 = load i16, i16* %11, align 2
  %13 = lshr i16 %12, 7
  %.lobit = and i16 %13, 1
  %14 = xor i16 %.lobit, 1
  %15 = zext i16 %14 to i32
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i32 [ 1, %2 ], [ %15, %10 ]
  %18 = load i8*, i8** %1, align 8
  %19 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %18) #7
  %20 = trunc i64 %19 to i32
  %21 = call i8* @strrchr(i8* noundef nonnull dereferenceable(1) %18, i32 noundef 47) #7
  %.not = icmp eq i8* %21, null
  br i1 %.not, label %27, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %1, align 8
  %24 = ptrtoint i8* %21 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %phi.cast = trunc i64 %26 to i32
  br label %28

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi i32 [ %phi.cast, %22 ], [ 0, %27 ]
  %.not5 = icmp eq i32 %29, 0
  br i1 %.not5, label %32, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds i8, i8* %21, i64 1
  br label %34

32:                                               ; preds = %28
  %33 = load i8*, i8** %1, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i8* [ %31, %30 ], [ %33, %32 ]
  %.not6 = icmp eq i32 %29, 0
  br i1 %.not6, label %38, label %36

36:                                               ; preds = %34
  %.neg = xor i32 %29, -1
  %37 = add i32 %.neg, %20
  br label %38

38:                                               ; preds = %36, %34
  %.02 = phi i32 [ %37, %36 ], [ %20, %34 ]
  %39 = add i32 %6, 1
  %40 = add i32 %39, %29
  %41 = add i32 %40, 1
  %42 = add i32 %41, %.02
  %43 = add i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = alloca i8, i64 %44, align 16
  br label %46

46:                                               ; preds = %97, %38
  %.03 = phi i32 [ 0, %38 ], [ %98, %97 ]
  %.01 = phi i32 [ 0, %38 ], [ %.3, %97 ]
  %47 = zext i32 %.03 to i64
  %48 = getelementptr inbounds i8*, i8** %4, i64 %47
  %49 = load i8*, i8** %48, align 8
  %.not7 = icmp eq i8* %49, null
  br i1 %.not7, label %99, label %50

50:                                               ; preds = %46
  %51 = zext i32 %.03 to i64
  %52 = getelementptr inbounds i8*, i8** %4, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %53) #7
  %55 = zext i32 %.03 to i64
  %56 = getelementptr inbounds i8*, i8** %4, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = and i64 %54, 4294967295
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %45, i8* align 1 %57, i64 %58, i1 false)
  %59 = and i64 %54, 4294967295
  %60 = getelementptr inbounds i8, i8* %45, i64 %59
  %.not8 = icmp eq i32 %29, 0
  br i1 %.not8, label %67, label %61

61:                                               ; preds = %50
  %62 = getelementptr inbounds i8, i8* %60, i64 1
  store i8 47, i8* %60, align 1
  %63 = load i8*, i8** %1, align 8
  %64 = zext i32 %29 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %62, i8* align 1 %63, i64 %64, i1 false)
  %65 = zext i32 %29 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  br label %67

67:                                               ; preds = %61, %50
  %.04 = phi i8* [ %66, %61 ], [ %60, %50 ]
  %.not9 = icmp eq i8* %.04, %45
  br i1 %.not9, label %72, label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds i8, i8* %.04, i64 -1
  %70 = load i8, i8* %69, align 1
  %.not15 = icmp eq i8 %70, 47
  br i1 %.not15, label %72, label %71

71:                                               ; preds = %68
  store i8 47, i8* %.04, align 1
  br label %72

72:                                               ; preds = %71, %68, %67
  %73 = getelementptr inbounds i8, i8* %.04, i64 1
  %74 = add i32 %.02, 1
  %75 = zext i32 %74 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %73, i8* align 1 %35, i64 %75, i1 false)
  %.not10 = icmp eq i32 %17, 0
  br i1 %.not10, label %80, label %76

76:                                               ; preds = %72
  %77 = call %struct.file* (i8*, ...) bitcast (%struct.file* (...)* @lookup_file to %struct.file* (i8*, ...)*)(i8* noundef nonnull %45) #6
  %78 = icmp ne %struct.file* %77, null
  %79 = zext i1 %78 to i32
  br label %80

80:                                               ; preds = %76, %72
  %.1 = phi i32 [ %79, %76 ], [ %.01, %72 ]
  %.not11 = icmp eq i32 %.1, 0
  br i1 %.not11, label %81, label %87

81:                                               ; preds = %80
  store i8 0, i8* %.04, align 1
  %.not12 = icmp eq i32 %29, 0
  br i1 %.not12, label %85, label %82

82:                                               ; preds = %81
  %83 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @dir_file_exists_p to i32 (i8*, i8*, ...)*)(i8* noundef nonnull %45, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #6
  %.not14 = icmp eq i32 %83, 0
  br i1 %.not14, label %84, label %85

84:                                               ; preds = %82
  br label %97

85:                                               ; preds = %82, %81
  %86 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @dir_file_exists_p to i32 (i8*, i8*, ...)*)(i8* noundef nonnull %45, i8* noundef %35) #6
  br label %87

87:                                               ; preds = %85, %80
  %.2 = phi i32 [ %.1, %80 ], [ %86, %85 ]
  %.not13 = icmp eq i32 %.2, 0
  br i1 %.not13, label %96, label %88

88:                                               ; preds = %87
  store i8 47, i8* %.04, align 1
  %89 = getelementptr inbounds i8, i8* %.04, i64 1
  %90 = ptrtoint i8* %89 to i64
  %91 = ptrtoint i8* %45 to i64
  %92 = sub i64 %90, %91
  %93 = zext i32 %.02 to i64
  %94 = add nsw i64 %92, %93
  %95 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef nonnull %45, i64 noundef %94) #6
  store i8* %95, i8** %1, align 8
  br label %100

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %84
  %.3 = phi i32 [ %.2, %96 ], [ %.1, %84 ]
  %98 = add i32 %.03, 1
  br label %46, !llvm.loop !16

99:                                               ; preds = %46
  br label %100

100:                                              ; preds = %99, %88
  %.0 = phi i32 [ 1, %88 ], [ 0, %99 ]
  ret i32 %.0
}

declare dso_local %struct.file* @lookup_file(...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}

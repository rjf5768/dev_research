; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/luac.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/luac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.0 }
%struct.anon.0 = type { %union.Value, i32, %struct.Node* }
%union.Value = type { %union.GCObject* }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.GCObject = type { %struct.lua_State }
%struct.lua_longjmp = type opaque
%struct.Smain = type { i32, i8** }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.LClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, %struct.Proto*, [1 x %struct.UpVal*] }

@.str = private unnamed_addr constant [21 x i8] c"no input files given\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"not enough memory for state\00", align 1
@progname = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@listing = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@output = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @Output, i32 0, i32 0), align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"'-o' needs argument\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@dumping = internal global i32 1, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@stripping = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@Output = internal global [9 x i8] c"luac.out\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%s  %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Lua 5.1.4\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Copyright (C) 1994-2008 Lua.org, PUC-Rio\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"luac\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [30 x i8] c"%s: unrecognized option '%s'\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [275 x i8] c"usage: %s [options] [filenames].\0AAvailable options are:\0A  -        process stdin\0A  -l       list\0A  -o name  output to file 'name' (default is \22%s\22)\0A  -p       parse only\0A  -s       strip debug information\0A  -v       show version information\0A  --       stop handling options\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"too many input files\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"=(luac)\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"%s: cannot %s %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.Smain, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @doargs(i32 noundef %9, i8** noundef %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  store i8** %18, i8*** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  call void @usage(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %21, %2
  %23 = call %struct.lua_State* @luaL_newstate()
  store %struct.lua_State* %23, %struct.lua_State** %6, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %25 = icmp eq %struct.lua_State* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  call void @fatal(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds %struct.Smain, %struct.Smain* %7, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds %struct.Smain, %struct.Smain* %7, i32 0, i32 1
  store i8** %30, i8*** %31, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %33 = bitcast %struct.Smain* %7 to i8*
  %34 = call i32 @lua_cpcall(%struct.lua_State* noundef %32, i32 (%struct.lua_State*)* noundef @pmain, i8* noundef %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %38 = call i8* @lua_tolstring(%struct.lua_State* noundef %37, i32 noundef -1, i64* noundef null)
  call void @fatal(i8* noundef %38)
  br label %39

39:                                               ; preds = %36, %27
  %40 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @lua_close(%struct.lua_State* noundef %40)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @doargs(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8**, i8*** %4, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @progname, align 8
  br label %22

22:                                               ; preds = %18, %11, %2
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %150, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %153

27:                                               ; preds = %23
  %28 = load i8**, i8*** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 45
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %153

37:                                               ; preds = %27
  %38 = load i8**, i8*** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcmp(i8* noundef %42, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %45
  br label %153

54:                                               ; preds = %37
  %55 = load i8**, i8*** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strcmp(i8* noundef %59, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %153

63:                                               ; preds = %54
  %64 = load i8**, i8*** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strcmp(i8* noundef %68, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #6
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @listing, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @listing, align 4
  br label %146

74:                                               ; preds = %63
  %75 = load i8**, i8*** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strcmp(i8* noundef %79, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #6
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %74
  %83 = load i8**, i8*** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** @output, align 8
  %89 = load i8*, i8** @output, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %82
  %92 = load i8*, i8** @output, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %82
  call void @usage(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %97

97:                                               ; preds = %96, %91
  %98 = load i8**, i8*** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strcmp(i8* noundef %102, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  store i8* null, i8** @output, align 8
  br label %106

106:                                              ; preds = %105, %97
  br label %145

107:                                              ; preds = %74
  %108 = load i8**, i8*** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @strcmp(i8* noundef %112, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #6
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  store i32 0, i32* @dumping, align 4
  br label %144

116:                                              ; preds = %107
  %117 = load i8**, i8*** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strcmp(i8* noundef %121, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #6
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store i32 1, i32* @stripping, align 4
  br label %143

125:                                              ; preds = %116
  %126 = load i8**, i8*** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @strcmp(i8* noundef %130, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #6
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %142

136:                                              ; preds = %125
  %137 = load i8**, i8*** %4, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  call void @usage(i8* noundef %141)
  br label %142

142:                                              ; preds = %136, %133
  br label %143

143:                                              ; preds = %142, %124
  br label %144

144:                                              ; preds = %143, %115
  br label %145

145:                                              ; preds = %144, %106
  br label %146

146:                                              ; preds = %145, %71
  br label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %148
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %23, !llvm.loop !4

153:                                              ; preds = %62, %53, %36, %23
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %3, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %153
  %158 = load i32, i32* @listing, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* @dumping, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %160, %157
  store i32 0, i32* @dumping, align 4
  %164 = load i8**, i8*** %4, align 8
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %164, i64 %167
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @Output, i64 0, i64 0), i8** %168, align 8
  br label %169

169:                                              ; preds = %163, %160, %153
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %169
  %173 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %3, align 4
  %176 = sub nsw i32 %175, 1
  %177 = icmp eq i32 %174, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  call void @exit(i32 noundef 0) #7
  unreachable

179:                                              ; preds = %172
  br label %180

180:                                              ; preds = %179, %169
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

; Function Attrs: noinline nounwind uwtable
define internal void @usage(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 45
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** @progname, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* noundef %9, i8* noundef %10)
  br label %17

12:                                               ; preds = %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8*, i8** @progname, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* noundef %14, i8* noundef %15)
  br label %17

17:                                               ; preds = %12, %7
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8*, i8** @progname, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([275 x i8], [275 x i8]* @.str.16, i64 0, i64 0), i8* noundef %19, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @Output, i64 0, i64 0))
  call void @exit(i32 noundef 1) #7
  unreachable
}

declare dso_local %struct.lua_State* @luaL_newstate() #1

; Function Attrs: noinline nounwind uwtable
define internal void @fatal(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @progname, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* noundef %4, i8* noundef %5)
  call void @exit(i32 noundef 1) #7
  unreachable
}

declare dso_local i32 @lua_cpcall(%struct.lua_State* noundef, i32 (%struct.lua_State*)* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @pmain(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.Smain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.Proto*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call i8* @lua_touserdata(%struct.lua_State* noundef %10, i32 noundef 1)
  %12 = bitcast i8* %11 to %struct.Smain*
  store %struct.Smain* %12, %struct.Smain** %3, align 8
  %13 = load %struct.Smain*, %struct.Smain** %3, align 8
  %14 = getelementptr inbounds %struct.Smain, %struct.Smain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.Smain*, %struct.Smain** %3, align 8
  %17 = getelementptr inbounds %struct.Smain, %struct.Smain* %16, i32 0, i32 1
  %18 = load i8**, i8*** %17, align 8
  store i8** %18, i8*** %5, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @lua_checkstack(%struct.lua_State* noundef %19, i32 noundef %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  call void @fatal(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %24

24:                                               ; preds = %23, %1
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %54, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* noundef %34, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %44

38:                                               ; preds = %29
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  br label %44

44:                                               ; preds = %38, %37
  %45 = phi i8* [ null, %37 ], [ %43, %38 ]
  store i8* %45, i8** %8, align 8
  %46 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @luaL_loadfile(%struct.lua_State* noundef %46, i8* noundef %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %52 = call i8* @lua_tolstring(%struct.lua_State* noundef %51, i32 noundef -1, i64* noundef null)
  call void @fatal(i8* noundef %52)
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %25, !llvm.loop !6

57:                                               ; preds = %25
  %58 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call %struct.Proto* @combine(%struct.lua_State* noundef %58, i32 noundef %59)
  store %struct.Proto* %60, %struct.Proto** %6, align 8
  %61 = load i32, i32* @listing, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.Proto*, %struct.Proto** %6, align 8
  %65 = load i32, i32* @listing, align 4
  %66 = icmp sgt i32 %65, 1
  %67 = zext i1 %66 to i32
  call void @luaU_print(%struct.Proto* noundef %64, i32 noundef %67)
  br label %68

68:                                               ; preds = %63, %57
  %69 = load i32, i32* @dumping, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %68
  %72 = load i8*, i8** @output, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %79

76:                                               ; preds = %71
  %77 = load i8*, i8** @output, align 8
  %78 = call noalias %struct._IO_FILE* @fopen(i8* noundef %77, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %74
  %80 = phi %struct._IO_FILE* [ %75, %74 ], [ %78, %76 ]
  store %struct._IO_FILE* %80, %struct._IO_FILE** %9, align 8
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %82 = icmp eq %struct._IO_FILE* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  call void @cannot(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %84

84:                                               ; preds = %83, %79
  %85 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %86 = load %struct.Proto*, %struct.Proto** %6, align 8
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %88 = bitcast %struct._IO_FILE* %87 to i8*
  %89 = load i32, i32* @stripping, align 4
  %90 = call i32 @luaU_dump(%struct.lua_State* noundef %85, %struct.Proto* noundef %86, i32 (%struct.lua_State*, i8*, i64, i8*)* noundef @writer, i8* noundef %88, i32 noundef %89)
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %92 = call i32 @ferror(%struct._IO_FILE* noundef %91) #8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  call void @cannot(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  br label %95

95:                                               ; preds = %94, %84
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %97 = call i32 @fclose(%struct._IO_FILE* noundef %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  call void @cannot(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  br label %100

100:                                              ; preds = %99, %95
  br label %101

101:                                              ; preds = %100, %68
  ret i32 0
}

declare dso_local i8* @lua_tolstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

declare dso_local void @lua_close(%struct.lua_State* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i8* @lua_touserdata(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_checkstack(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @luaL_loadfile(%struct.lua_State* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.Proto* @combine(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.Proto*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Proto*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 4
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i64 -1
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 0, i32 0
  %18 = bitcast %union.Value* %17 to %union.GCObject**
  %19 = load %union.GCObject*, %union.GCObject** %18, align 8
  %20 = bitcast %union.GCObject* %19 to %union.Closure*
  %21 = bitcast %union.Closure* %20 to %struct.LClosure*
  %22 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %21, i32 0, i32 7
  %23 = load %struct.Proto*, %struct.Proto** %22, align 8
  store %struct.Proto* %23, %struct.Proto** %3, align 8
  br label %164

24:                                               ; preds = %2
  %25 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %26 = call %struct.Proto* @luaF_newproto(%struct.lua_State* noundef %25)
  store %struct.Proto* %26, %struct.Proto** %8, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 4
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %28, align 8
  store %struct.lua_TValue* %29, %struct.lua_TValue** %9, align 8
  %30 = load %struct.Proto*, %struct.Proto** %8, align 8
  %31 = bitcast %struct.Proto* %30 to %union.GCObject*
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 0
  %34 = bitcast %union.Value* %33 to %union.GCObject**
  store %union.GCObject* %31, %union.GCObject** %34, align 8
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i32 0, i32 1
  store i32 9, i32* %36, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 9
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %38, align 8
  %40 = bitcast %struct.lua_TValue* %39 to i8*
  %41 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 4
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %42, align 8
  %44 = bitcast %struct.lua_TValue* %43 to i8*
  %45 = ptrtoint i8* %40 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = icmp sle i64 %47, 16
  br i1 %48, label %49, label %51

49:                                               ; preds = %24
  %50 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaD_growstack(%struct.lua_State* noundef %50, i32 noundef 1)
  br label %52

51:                                               ; preds = %24
  br label %52

52:                                               ; preds = %51, %49
  %53 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %54 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %53, i32 0, i32 4
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %54, align 8
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i32 1
  store %struct.lua_TValue* %56, %struct.lua_TValue** %54, align 8
  %57 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %58 = call %union.TString* @luaS_newlstr(%struct.lua_State* noundef %57, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i64 noundef 7)
  %59 = load %struct.Proto*, %struct.Proto** %8, align 8
  %60 = getelementptr inbounds %struct.Proto, %struct.Proto* %59, i32 0, i32 9
  store %union.TString* %58, %union.TString** %60, align 8
  %61 = load %struct.Proto*, %struct.Proto** %8, align 8
  %62 = getelementptr inbounds %struct.Proto, %struct.Proto* %61, i32 0, i32 22
  store i8 1, i8* %62, align 1
  %63 = load i32, i32* %5, align 4
  %64 = mul nsw i32 2, %63
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = icmp ule i64 %68, 4611686018427387903
  br i1 %69, label %70, label %76

70:                                               ; preds = %52
  %71 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = call i8* @luaM_realloc_(%struct.lua_State* noundef %71, i8* noundef null, i64 noundef 0, i64 noundef %74)
  br label %79

76:                                               ; preds = %52
  %77 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %78 = call i8* @luaM_toobig(%struct.lua_State* noundef %77)
  br label %79

79:                                               ; preds = %76, %70
  %80 = phi i8* [ %75, %70 ], [ %78, %76 ]
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.Proto*, %struct.Proto** %8, align 8
  %83 = getelementptr inbounds %struct.Proto, %struct.Proto* %82, i32 0, i32 4
  store i32* %81, i32** %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.Proto*, %struct.Proto** %8, align 8
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %85, i32 0, i32 12
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = icmp ule i64 %89, 2305843009213693951
  br i1 %90, label %91, label %97

91:                                               ; preds = %79
  %92 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 8
  %96 = call i8* @luaM_realloc_(%struct.lua_State* noundef %92, i8* noundef null, i64 noundef 0, i64 noundef %95)
  br label %100

97:                                               ; preds = %79
  %98 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %99 = call i8* @luaM_toobig(%struct.lua_State* noundef %98)
  br label %100

100:                                              ; preds = %97, %91
  %101 = phi i8* [ %96, %91 ], [ %99, %97 ]
  %102 = bitcast i8* %101 to %struct.Proto**
  %103 = load %struct.Proto*, %struct.Proto** %8, align 8
  %104 = getelementptr inbounds %struct.Proto, %struct.Proto* %103, i32 0, i32 5
  store %struct.Proto** %102, %struct.Proto*** %104, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.Proto*, %struct.Proto** %8, align 8
  %107 = getelementptr inbounds %struct.Proto, %struct.Proto* %106, i32 0, i32 14
  store i32 %105, i32* %107, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %152, %100
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %155

112:                                              ; preds = %108
  %113 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %114 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %113, i32 0, i32 4
  %115 = load %struct.lua_TValue*, %struct.lua_TValue** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %5, align 4
  %118 = sub nsw i32 %116, %117
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %115, i64 %120
  %122 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %121, i32 0, i32 0
  %123 = bitcast %union.Value* %122 to %union.GCObject**
  %124 = load %union.GCObject*, %union.GCObject** %123, align 8
  %125 = bitcast %union.GCObject* %124 to %union.Closure*
  %126 = bitcast %union.Closure* %125 to %struct.LClosure*
  %127 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %126, i32 0, i32 7
  %128 = load %struct.Proto*, %struct.Proto** %127, align 8
  %129 = load %struct.Proto*, %struct.Proto** %8, align 8
  %130 = getelementptr inbounds %struct.Proto, %struct.Proto* %129, i32 0, i32 5
  %131 = load %struct.Proto**, %struct.Proto*** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.Proto*, %struct.Proto** %131, i64 %133
  store %struct.Proto* %128, %struct.Proto** %134, align 8
  %135 = load i32, i32* %6, align 4
  %136 = shl i32 %135, 14
  %137 = or i32 36, %136
  %138 = load %struct.Proto*, %struct.Proto** %8, align 8
  %139 = getelementptr inbounds %struct.Proto, %struct.Proto* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  store i32 %137, i32* %144, align 4
  %145 = load %struct.Proto*, %struct.Proto** %8, align 8
  %146 = getelementptr inbounds %struct.Proto, %struct.Proto* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 8405020, i32* %151, align 4
  br label %152

152:                                              ; preds = %112
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %108, !llvm.loop !7

155:                                              ; preds = %108
  %156 = load %struct.Proto*, %struct.Proto** %8, align 8
  %157 = getelementptr inbounds %struct.Proto, %struct.Proto* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  store i32 8388638, i32* %162, align 4
  %163 = load %struct.Proto*, %struct.Proto** %8, align 8
  store %struct.Proto* %163, %struct.Proto** %3, align 8
  br label %164

164:                                              ; preds = %155, %12
  %165 = load %struct.Proto*, %struct.Proto** %3, align 8
  ret %struct.Proto* %165
}

declare hidden void @luaU_print(%struct.Proto* noundef, i32 noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @cannot(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @progname, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i8*, i8** @output, align 8
  %7 = call i32* @__errno_location() #9
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @strerror(i32 noundef %8) #8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i8* noundef %4, i8* noundef %5, i8* noundef %6, i8* noundef %9)
  call void @exit(i32 noundef 1) #7
  unreachable
}

declare hidden i32 @luaU_dump(%struct.lua_State* noundef, %struct.Proto* noundef, i32 (%struct.lua_State*, i8*, i64, i8*)* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @writer(%struct.lua_State* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct._IO_FILE*
  %14 = call i64 @fwrite(i8* noundef %10, i64 noundef %11, i64 noundef 1, %struct._IO_FILE* noundef %13)
  %15 = icmp ne i64 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %16, %4
  %20 = phi i1 [ false, %4 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #4

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State* noundef) #1

declare hidden void @luaD_growstack(%struct.lua_State* noundef, i32 noundef) #1

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State* noundef, i8* noundef, i64 noundef) #1

declare hidden i8* @luaM_realloc_(%struct.lua_State* noundef, i8* noundef, i64 noundef, i64 noundef) #1

declare hidden i8* @luaM_toobig(%struct.lua_State* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32 noundef) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #5

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

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

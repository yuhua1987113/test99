﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

namespace WZ.Data.IData
{
    /// <summary>
    /// 用于ClassPath类的接口
    /// </summary>
    public interface IClassPath
    {
        /// <summary>
        /// 初始或清空一次递归后的数据
        /// </summary>
        void ClearData();

        /// <summary>
        /// 循环ID所在的每一个等级只一次
        /// </summary>
        /// <param name="pDrw"></param>
        void ClassEach(DataRow pDrw);
    }
}

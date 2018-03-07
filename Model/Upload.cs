﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    class Upload
    {
    }
    public class Account
    {
        public string Email { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Title { get; set; }

    }

    public class Document
    {
        public int doc_id_int { get; set; }
        public string doc_id { get; set; }
        public string doc_name { get; set; }
        public string doc_name_v1 { get; set; }
        public string doc_name_v2 { get; set; }
        public string create_by { get; set; }
        public string update_by { get; set; }
        public string approve_by { get; set; }
        public string update_date { get; set; }
        public string upload_date { get; set; }
        public string sign_prepare_date { get; set; }
        public string sign_approve_date { get; set; }
        public string send_mail_approve_date { get; set; }
        public int page_count { get; set; }
        public string approve_problem { get; set; }
        public string secure_prepare { get; set; }
        public string secure_approve { get; set; }
        public string attach_file_name { get; set; }
        public string content { get; set; }
        public string paper_type { get; set; }
       


    }



}
Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F17210D38
	for <lists.bridge@lfdr.de>; Wed,  1 Jul 2020 16:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B5458A51C;
	Wed,  1 Jul 2020 14:11:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vxSo1a69PuyH; Wed,  1 Jul 2020 14:11:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76B158A4F5;
	Wed,  1 Jul 2020 14:11:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5AF3AC08A2;
	Wed,  1 Jul 2020 14:11:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6F2E4C0733
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 14:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 49EBB301E5
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 14:11:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SyiOPQwzmLsw for <bridge@lists.linux-foundation.org>;
 Wed,  1 Jul 2020 14:11:31 +0000 (UTC)
X-Greylist: delayed 00:45:53 by SQLgrey-1.7.6
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by silver.osuosl.org (Postfix) with ESMTPS id 7E01C3008B
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 14:11:31 +0000 (UTC)
Received: from fsav305.sakura.ne.jp (fsav305.sakura.ne.jp [153.120.85.136])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 061E90OX093153;
 Wed, 1 Jul 2020 23:09:00 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav305.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav305.sakura.ne.jp);
 Wed, 01 Jul 2020 23:09:00 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav305.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 061E8xWB093138
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Wed, 1 Jul 2020 23:08:59 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
To: Luis Chamberlain <mcgrof@kernel.org>
References: <9e767819-9bbe-2181-521e-4d8ca28ca4f7@de.ibm.com>
 <20200624160953.GH4332@42.do-not-panic.com>
 <ea41e2a9-61f7-aec1-79e5-7b08b6dd5119@de.ibm.com>
 <4e27098e-ac8d-98f0-3a9a-ea25242e24ec@de.ibm.com>
 <4d8fbcea-a892-3453-091f-d57c03f9aa90@de.ibm.com>
 <1263e370-7cee-24d8-b98c-117bf7c90a83@de.ibm.com>
 <20200626025410.GJ4332@42.do-not-panic.com>
 <20200630175704.GO13911@42.do-not-panic.com>
 <b24d8dae-1872-ba2c-acd4-ed46c0781317@de.ibm.com>
 <a6792135-3285-0861-014e-3db85ea251dc@i-love.sakura.ne.jp>
 <20200701135324.GS4332@42.do-not-panic.com>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <8d714a23-bac4-7631-e5fc-f97c20a46083@i-love.sakura.ne.jp>
Date: Wed, 1 Jul 2020 23:08:57 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200701135324.GS4332@42.do-not-panic.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ast@kernel.org, jarkko.sakkinen@linux.intel.com, philipp.reisner@linbit.com,
 bfields@fieldses.org, keyrings@vger.kernel.org, christian.brauner@ubuntu.com,
 yangtiezhu@loongson.cn, linux-s390 <linux-s390@vger.kernel.org>,
 bridge@lists.linux-foundation.org, jmorris@namei.org,
 Christoph Hellwig <hch@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, kuba@kernel.org,
 serge@hallyn.com, keescook@chromium.org, nikolay@cumulusnetworks.com,
 roopa@cumulusnetworks.com, josh@joshtriplett.org, slyfox@gentoo.org,
 viro@zeniv.linux.org.uk, axboe@kernel.dk, dhowells@redhat.com,
 linux-nfs@vger.kernel.org, chainsaw@gentoo.org, ravenexp@gmail.com,
 gregkh@linuxfoundation.org, markward@linux.ibm.com,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 chuck.lever@oracle.com, netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 lars.ellenberg@linbit.com, davem@davemloft.net
Subject: Re: [Bridge] linux-next: umh: fix processed error when
 UMH_WAIT_PROC is used seems to break linux bridge on s390x (bisected)
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On 2020/07/01 22:53, Luis Chamberlain wrote:
>> Well, it is not br_stp_call_user() but br_stp_start() which is expecting
>> to set sub_info->retval for both KWIFEXITED() case and KWIFSIGNALED() case.
>> That is, sub_info->retval needs to carry raw value (i.e. without "umh: fix
>> processed error when UMH_WAIT_PROC is used" will be the correct behavior).
> 
> br_stp_start() doesn't check for the raw value, it just checks for err
> or !err. So the patch, "umh: fix processed error when UMH_WAIT_PROC is
> used" propagates the correct error now.

No. If "/sbin/bridge-stp virbr0 start" terminated due to e.g. SIGSEGV
(for example, by inserting "kill -SEGV $$" into right after "#!/bin/sh" line),
br_stp_start() needs to select BR_KERNEL_STP path. We can't assume that
/sbin/bridge-stp is always terminated by exit() syscall (and hence we can't
ignore KWIFSIGNALED() case in call_usermodehelper_exec_sync()).


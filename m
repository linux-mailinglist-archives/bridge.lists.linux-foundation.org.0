Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20849210D59
	for <lists.bridge@lfdr.de>; Wed,  1 Jul 2020 16:17:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C5FEF8C007;
	Wed,  1 Jul 2020 14:17:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kBCQxNC4K6nk; Wed,  1 Jul 2020 14:17:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A0998BFFF;
	Wed,  1 Jul 2020 14:17:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7D593C08A2;
	Wed,  1 Jul 2020 14:17:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AE03BC0733
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 14:17:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A7C4A8C007
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 14:17:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lIolGcT9LDLP for <bridge@lists.linux-foundation.org>;
 Wed,  1 Jul 2020 14:17:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5F38E8BFFF
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 14:17:40 +0000 (UTC)
Received: from fsav109.sakura.ne.jp (fsav109.sakura.ne.jp [27.133.134.236])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 061DOXC9036582;
 Wed, 1 Jul 2020 22:24:33 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav109.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav109.sakura.ne.jp);
 Wed, 01 Jul 2020 22:24:33 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav109.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 061DOW2e036570
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Wed, 1 Jul 2020 22:24:32 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
To: Christian Borntraeger <borntraeger@de.ibm.com>,
 Luis Chamberlain <mcgrof@kernel.org>
References: <b7d658b9-606a-feb1-61f9-b58e3420d711@de.ibm.com>
 <3118dc0d-a3af-9337-c897-2380062a8644@de.ibm.com>
 <20200624144311.GA5839@infradead.org>
 <9e767819-9bbe-2181-521e-4d8ca28ca4f7@de.ibm.com>
 <20200624160953.GH4332@42.do-not-panic.com>
 <ea41e2a9-61f7-aec1-79e5-7b08b6dd5119@de.ibm.com>
 <4e27098e-ac8d-98f0-3a9a-ea25242e24ec@de.ibm.com>
 <4d8fbcea-a892-3453-091f-d57c03f9aa90@de.ibm.com>
 <1263e370-7cee-24d8-b98c-117bf7c90a83@de.ibm.com>
 <20200626025410.GJ4332@42.do-not-panic.com>
 <20200630175704.GO13911@42.do-not-panic.com>
 <b24d8dae-1872-ba2c-acd4-ed46c0781317@de.ibm.com>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <a6792135-3285-0861-014e-3db85ea251dc@i-love.sakura.ne.jp>
Date: Wed, 1 Jul 2020 22:24:29 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <b24d8dae-1872-ba2c-acd4-ed46c0781317@de.ibm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ast@kernel.org, jarkko.sakkinen@linux.intel.com, philipp.reisner@linbit.com,
 bfields@fieldses.org, keyrings@vger.kernel.org, christian.brauner@ubuntu.com,
 yangtiezhu@loongson.cn, linux-s390 <linux-s390@vger.kernel.org>,
 bridge@lists.linux-foundation.org, jmorris@namei.org,
 Christoph Hellwig <hch@infradead.org>, kuba@kernel.org, serge@hallyn.com,
 keescook@chromium.org, nikolay@cumulusnetworks.com, roopa@cumulusnetworks.com,
 josh@joshtriplett.org, slyfox@gentoo.org, viro@zeniv.linux.org.uk,
 axboe@kernel.dk, dhowells@redhat.com, linux-nfs@vger.kernel.org,
 chainsaw@gentoo.org, ravenexp@gmail.com, gregkh@linuxfoundation.org,
 markward@linux.ibm.com, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, chuck.lever@oracle.com,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
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

On 2020/07/01 19:08, Christian Borntraeger wrote:
> 
> 
> On 30.06.20 19:57, Luis Chamberlain wrote:
>> On Fri, Jun 26, 2020 at 02:54:10AM +0000, Luis Chamberlain wrote:
>>> On Wed, Jun 24, 2020 at 08:37:55PM +0200, Christian Borntraeger wrote:
>>>>
>>>>
>>>> On 24.06.20 20:32, Christian Borntraeger wrote:
>>>> [...]> 
>>>>> So the translations look correct. But your change is actually a sematic change
>>>>> if(ret) will only trigger if there is an error
>>>>> if (KWIFEXITED(ret)) will always trigger when the process ends. So we will always overwrite -ECHILD
>>>>> and we did not do it before. 
>>>>>
>>>>
>>>> So the right fix is
>>>>
>>>> diff --git a/kernel/umh.c b/kernel/umh.c
>>>> index f81e8698e36e..a3a3196e84d1 100644
>>>> --- a/kernel/umh.c
>>>> +++ b/kernel/umh.c
>>>> @@ -154,7 +154,7 @@ static void call_usermodehelper_exec_sync(struct subprocess_info *sub_info)
>>>>                  * the real error code is already in sub_info->retval or
>>>>                  * sub_info->retval is 0 anyway, so don't mess with it then.
>>>>                  */
>>>> -               if (KWIFEXITED(ret))
>>>> +               if (KWEXITSTATUS(ret))
>>>>                         sub_info->retval = KWEXITSTATUS(ret);

Well, it is not br_stp_call_user() but br_stp_start() which is expecting
to set sub_info->retval for both KWIFEXITED() case and KWIFSIGNALED() case.
That is, sub_info->retval needs to carry raw value (i.e. without "umh: fix
processed error when UMH_WAIT_PROC is used" will be the correct behavior).


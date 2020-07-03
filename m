Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F672130AA
	for <lists.bridge@lfdr.de>; Fri,  3 Jul 2020 02:53:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D076F88A2E;
	Fri,  3 Jul 2020 00:53:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0PPKyQX19IWu; Fri,  3 Jul 2020 00:53:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB4E088C3F;
	Fri,  3 Jul 2020 00:53:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A05EBC0890;
	Fri,  3 Jul 2020 00:53:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C7FB6C0733
 for <bridge@lists.linux-foundation.org>; Fri,  3 Jul 2020 00:53:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B67628780F
 for <bridge@lists.linux-foundation.org>; Fri,  3 Jul 2020 00:53:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Go7acyc8TWBM for <bridge@lists.linux-foundation.org>;
 Fri,  3 Jul 2020 00:53:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4F87D8780C
 for <bridge@lists.linux-foundation.org>; Fri,  3 Jul 2020 00:53:46 +0000 (UTC)
Received: from fsav303.sakura.ne.jp (fsav303.sakura.ne.jp [153.120.85.134])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 0630q3Dc066718;
 Fri, 3 Jul 2020 09:52:03 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav303.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav303.sakura.ne.jp);
 Fri, 03 Jul 2020 09:52:03 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav303.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 0630q2Yw066713
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Fri, 3 Jul 2020 09:52:02 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
To: Luis Chamberlain <mcgrof@kernel.org>
References: <4d8fbcea-a892-3453-091f-d57c03f9aa90@de.ibm.com>
 <1263e370-7cee-24d8-b98c-117bf7c90a83@de.ibm.com>
 <20200626025410.GJ4332@42.do-not-panic.com>
 <20200630175704.GO13911@42.do-not-panic.com>
 <b24d8dae-1872-ba2c-acd4-ed46c0781317@de.ibm.com>
 <a6792135-3285-0861-014e-3db85ea251dc@i-love.sakura.ne.jp>
 <20200701135324.GS4332@42.do-not-panic.com>
 <8d714a23-bac4-7631-e5fc-f97c20a46083@i-love.sakura.ne.jp>
 <20200701153859.GT4332@42.do-not-panic.com>
 <e3f3e501-2cb7-b683-4b85-2002b7603244@i-love.sakura.ne.jp>
 <20200702194656.GV4332@42.do-not-panic.com>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <d8a74a06-de97-54ae-de03-0d955e82f62b@i-love.sakura.ne.jp>
Date: Fri, 3 Jul 2020 09:52:01 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200702194656.GV4332@42.do-not-panic.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ast@kernel.org, jarkko.sakkinen@linux.intel.com, philipp.reisner@linbit.com,
 David Howells <dhowells@redhat.com>, keyrings@vger.kernel.org,
 christian.brauner@ubuntu.com, yangtiezhu@loongson.cn,
 linux-s390 <linux-s390@vger.kernel.org>, bridge@lists.linux-foundation.org,
 jmorris@namei.org, Christoph Hellwig <hch@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, kuba@kernel.org,
 serge@hallyn.com, keescook@chromium.org, nikolay@cumulusnetworks.com,
 roopa@cumulusnetworks.com, josh@joshtriplett.org, slyfox@gentoo.org,
 viro@zeniv.linux.org.uk, axboe@kernel.dk, bfields@fieldses.org,
 linux-nfs@vger.kernel.org, chainsaw@gentoo.org, ravenexp@gmail.com,
 gregkh@linuxfoundation.org, markward@linux.ibm.com,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 chuck.lever@oracle.com, "Eric W. Biederman" <ebiederm@xmission.com>,
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

On 2020/07/03 4:46, Luis Chamberlain wrote:
> On Thu, Jul 02, 2020 at 01:26:53PM +0900, Tetsuo Handa wrote:
>> On 2020/07/02 0:38, Luis Chamberlain wrote:
>>> @@ -156,6 +156,18 @@ static void call_usermodehelper_exec_sync(struct subprocess_info *sub_info)
>>>  		 */
>>>  		if (KWIFEXITED(ret))
>>>  			sub_info->retval = KWEXITSTATUS(ret);
>>> +		/*
>>> +		 * Do we really want to be passing the signal, or do we pass
>>> +		 * a single error code for all cases?
>>> +		 */
>>> +		else if (KWIFSIGNALED(ret))
>>> +			sub_info->retval = KWTERMSIG(ret);
>>
>> No, this is bad. Caller of usermode helper is unable to distinguish exit(9)
>> and e.g. SIGKILL'ed by the OOM-killer.
> 
> Right, the question is: do we care?

Yes, we have to care.

> And the umh patch "umh: fix processed error when UMH_WAIT_PROC is used"
> changed this to:
> 
> -       if (ret >= 0) {
> +       if (ret != 0) {
> 
> Prior to the patch negative return values from userspace were still
> being captured, and likewise signals, but the error value was not
> raw, not the actual value. After the patch, since we check for ret != 0
> we still upkeep the sanity check for any error, correct the error value,
> but as you noted signals were ignored as I made the wrong assumption
> we would ignore them. The umh sub_info->retval is set after my original
> patch only if KWIFSIGNALED(ret)), and ignored signals, and so that
> would be now capitured with the additional KWIFSIGNALED(ret)) check.

"call_usermodehelper_keys() == 0" (i.e. usermode helper was successfully
started and successfully terminated via exit(0)) is different from "there is
nothing to do". call_sbin_request_key() == 0 case still has to check for
possibility of -ENOKEY case.

> 
> The question still stands:
> 
> Do we want to open code all these checks or simply wrap them up in
> the umh. If we do the later, as you note exit(9) and a SIGKILL will
> be the same to the inspector in the kernel. But do we care?

Yes, we do care.

> 
> Do we really want umh callers differntiatin between signals and exit values?

Yes, we do.

> 
> The alternative to making a compromise is using generic wrappers for
> things which make sense and letting the callers use those.

I suggest just introducing KWIFEXITED()/KWEXITSTATUS()/KWIFSIGNALED()/KWTERMSIG()
macros and fixing the callers, for some callers are not aware of possibility of
KWIFSIGNALED() case.

For example, conn_try_outdate_peer() in drivers/block/drbd/drbd_nl.c misbehaves if
drbd_usermode_helper process was terminated by a signal, for the switch() statement
after returning from conn_helper() is assuming that the return value of conn_helper()
is a KWEXITSTATUS() value if drbd_usermode_helper process was successfully started.
If drbd_usermode_helper process was terminated by SIGQUIT (which is 3),
conn_try_outdate_peer() will by error hit "case P_INCONSISTENT:" (which is 3);
conn_try_outdate_peer() should hit "default: /* The script is broken ... */"
unless KWIFEXITED() == true.

Your patch is trying to obnubilate the return code.


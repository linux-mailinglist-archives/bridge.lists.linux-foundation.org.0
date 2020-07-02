Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2C7211B10
	for <lists.bridge@lfdr.de>; Thu,  2 Jul 2020 06:28:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B320B8B727;
	Thu,  2 Jul 2020 04:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E3IR10q8i90A; Thu,  2 Jul 2020 04:28:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id A97838B729;
	Thu,  2 Jul 2020 04:28:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8CDCAC0733;
	Thu,  2 Jul 2020 04:28:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EEE97C0733
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 04:28:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DAA308A93E
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 04:28:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U9bXePYRkRZC for <bridge@lists.linux-foundation.org>;
 Thu,  2 Jul 2020 04:28:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 75E3E8A93A
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 04:28:04 +0000 (UTC)
Received: from fsav105.sakura.ne.jp (fsav105.sakura.ne.jp [27.133.134.232])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 0624QsOL032532;
 Thu, 2 Jul 2020 13:26:54 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav105.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav105.sakura.ne.jp);
 Thu, 02 Jul 2020 13:26:54 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav105.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 0624Qsh8032529
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Thu, 2 Jul 2020 13:26:54 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
To: Luis Chamberlain <mcgrof@kernel.org>
References: <ea41e2a9-61f7-aec1-79e5-7b08b6dd5119@de.ibm.com>
 <4e27098e-ac8d-98f0-3a9a-ea25242e24ec@de.ibm.com>
 <4d8fbcea-a892-3453-091f-d57c03f9aa90@de.ibm.com>
 <1263e370-7cee-24d8-b98c-117bf7c90a83@de.ibm.com>
 <20200626025410.GJ4332@42.do-not-panic.com>
 <20200630175704.GO13911@42.do-not-panic.com>
 <b24d8dae-1872-ba2c-acd4-ed46c0781317@de.ibm.com>
 <a6792135-3285-0861-014e-3db85ea251dc@i-love.sakura.ne.jp>
 <20200701135324.GS4332@42.do-not-panic.com>
 <8d714a23-bac4-7631-e5fc-f97c20a46083@i-love.sakura.ne.jp>
 <20200701153859.GT4332@42.do-not-panic.com>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <e3f3e501-2cb7-b683-4b85-2002b7603244@i-love.sakura.ne.jp>
Date: Thu, 2 Jul 2020 13:26:53 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200701153859.GT4332@42.do-not-panic.com>
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

On 2020/07/02 0:38, Luis Chamberlain wrote:
> @@ -156,6 +156,18 @@ static void call_usermodehelper_exec_sync(struct subprocess_info *sub_info)
>  		 */
>  		if (KWIFEXITED(ret))
>  			sub_info->retval = KWEXITSTATUS(ret);
> +		/*
> +		 * Do we really want to be passing the signal, or do we pass
> +		 * a single error code for all cases?
> +		 */
> +		else if (KWIFSIGNALED(ret))
> +			sub_info->retval = KWTERMSIG(ret);

No, this is bad. Caller of usermode helper is unable to distinguish exit(9)
and e.g. SIGKILL'ed by the OOM-killer. Please pass raw exit status value.

I feel that caller of usermode helper should not use exit status value.
For example, call_sbin_request_key() is checking

  test_bit(KEY_FLAG_USER_CONSTRUCT, &key->flags) || key_validate(key) < 0

condition (if usermode helper was invoked) in order to "ignore any errors from
userspace if the key was instantiated".

> +		/* Same here */
> +		else if (KWIFSTOPPED((ret)))
> +			sub_info->retval = KWSTOPSIG(ret);
> +		/* And are we really sure we want this? */
> +		else if (KWIFCONTINUED((ret)))
> +			sub_info->retval = 0;
>  	}
>  
>  	/* Restore default kernel sig handler */
> 


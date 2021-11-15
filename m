Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9623D457D24
	for <lists.bridge@lfdr.de>; Sat, 20 Nov 2021 11:38:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4479340386;
	Sat, 20 Nov 2021 10:38:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xop-5gGqHLvL; Sat, 20 Nov 2021 10:38:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 23D5A40385;
	Sat, 20 Nov 2021 10:38:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F290AC0040;
	Sat, 20 Nov 2021 10:38:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8E7ADC0012
 for <bridge@lists.linux-foundation.org>; Mon, 15 Nov 2021 18:35:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C4F780CDC
 for <bridge@lists.linux-foundation.org>; Mon, 15 Nov 2021 18:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WpT0zG0wcwts for <bridge@lists.linux-foundation.org>;
 Mon, 15 Nov 2021 18:35:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp.smtpout.orange.fr (smtp08.smtpout.orange.fr
 [80.12.242.130])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F24CC80CDB
 for <bridge@lists.linux-foundation.org>; Mon, 15 Nov 2021 18:35:52 +0000 (UTC)
Received: from [192.168.1.18] ([86.243.171.122]) by smtp.orange.fr with ESMTPA
 id mgpYmlwNfHQrlmgpYml2nB; Mon, 15 Nov 2021 19:35:50 +0100
X-ME-Helo: [192.168.1.18]
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Mon, 15 Nov 2021 19:35:50 +0100
X-ME-IP: 86.243.171.122
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <00c39d09c8df7ad0673bf2043f6566d6ef08b789.1636916479.git.christophe.jaillet@wanadoo.fr>
 <20211115123534.GD26989@kadam>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <b3c93506-7dc8-a5fe-6cfc-938fc88b9f07@wanadoo.fr>
Date: Mon, 15 Nov 2021 19:35:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211115123534.GD26989@kadam>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sat, 20 Nov 2021 10:38:00 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 nikolay@nvidia.com, roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH] net: bridge: Slightly optimize 'find_portno()'
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

Le 15/11/2021 à 13:35, Dan Carpenter a écrit :
> On Sun, Nov 14, 2021 at 08:02:35PM +0100, Christophe JAILLET wrote:
>> The 'inuse' bitmap is local to this function. So we can use the
>> non-atomic '__set_bit()' to save a few cycles.
>>
>> While at it, also remove some useless {}.
> 
> I like the {} and tend to add it in new code.  There isn't a rule about
> this one way or the other.
> 
> regards,
> dan carpenter
> 
> 
> 

Hi Dan,

- checkpatch prefers the style without {}
- Usually, greg k-h and Joe Perches give feed-back that extra {} should 
be removed.
- in https://www.kernel.org/doc/html/v5.13/process/coding-style.html, 
after "Rationale: K&R":
    "Do not unnecessarily use braces where a single statement will do."


My own preference is to have {}. It is the standard used on another 
project I work on (i.e. httpd) and it helps when you add some code (it 
avoids unexpected behavior if you forget to add some missing {})

My understanding is that on the HUGE code base of Linux, emphasis is put 
on saving some lines of code, reducing the length of lines and avoiding 
the need to read some extra char.
I'm also fine with it.

CJ

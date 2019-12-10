Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C0F1191AB
	for <lists.bridge@lfdr.de>; Tue, 10 Dec 2019 21:15:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8EDBD884B9;
	Tue, 10 Dec 2019 20:15:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pl0AEufxvnhy; Tue, 10 Dec 2019 20:15:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id A9A32884A1;
	Tue, 10 Dec 2019 20:15:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 82A33C1796;
	Tue, 10 Dec 2019 20:15:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 47519C0881
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 20:15:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3067F22708
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 20:15:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MCPfsALZFJPK for <bridge@lists.linux-foundation.org>;
 Tue, 10 Dec 2019 20:15:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 84965204C8
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 20:15:30 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id z17so21293517ljk.13
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 12:15:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=91mr6eeADorjnfR5x6lK4E8CAqAHq5gQKNZL6IXrUFA=;
 b=bQA61WiJYd7BqY39Yve6U2jh2wYlAPueDf+k46tLEX1y3Aj89Yno4yd9FjOOUMU8eE
 qaBZqveZUZGDG0MltiNRwN5Fdz/2fNYsoZlgrNyJe3P0+AdoFtwpeyQCrx/DhcQPy3b/
 zRLUGxmcOGbmoSBmX/KC7RuG3f9wNB+fPaTQM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=91mr6eeADorjnfR5x6lK4E8CAqAHq5gQKNZL6IXrUFA=;
 b=YoiMA80BpmmduYfmW6KIeFTgC1wiaUHbBEdRW4idBl9A2M0GKP/UH0P/K56i25DUjt
 w2pVsO4005MatE0EsRuZkslPDGEBdGInu38NRiJOAJshmesfAZlLLiMBuV+t02a9m3vZ
 TGjazEfQT2jp+2AkAbfVHx+f6rKtEkkmkAz5WgcC/j1n0ohzYziP9999SA/VAC4ymabP
 s/XMjaQjvtivS/UpxikqVWK7P5AbibGYwDoiaJNL+A+XDtf4jZzai9ltAW72u0lvUqkn
 5mroEXMpyZyxdjK7wrWzr3kidV/YFSaezM8j+LF6VSsvmVANxrUIXTAxYiQ2FbeIrQUe
 Y3UA==
X-Gm-Message-State: APjAAAXCT5/dd/vVEdDD0JkJeXaQ11q77BIYOKEQEm70FBzZlUIiRbBL
 /ZyIjNyh8Y7EjNL9rpTj0l7eWw==
X-Google-Smtp-Source: APXvYqyJqWadhotEciJHD7Dq5ycnfp73ZFdCSUYp45Va2Ao7YkJJOLpTHAvGruR0clwe9eQFZf9c0Q==
X-Received: by 2002:a2e:9008:: with SMTP id h8mr22407749ljg.217.1576008928612; 
 Tue, 10 Dec 2019 12:15:28 -0800 (PST)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 10sm2511653ljw.2.2019.12.10.12.15.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Dec 2019 12:15:28 -0800 (PST)
To: Vivien Didelot <vivien.didelot@gmail.com>
References: <20191209230522.1255467-1-vivien.didelot@gmail.com>
 <a3b8e24d-5152-7243-545f-8a3e5fbaa53a@cumulusnetworks.com>
 <20191210143931.GF1344570@t480s.localdomain>
 <2f4e351c-158a-4f00-629f-237a63742f66@cumulusnetworks.com>
 <20191210151047.GB1423505@t480s.localdomain>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <1aa8b6e4-6a73-60b0-c5fb-c0dfa05e27e6@cumulusnetworks.com>
Date: Tue, 10 Dec 2019 22:15:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191210151047.GB1423505@t480s.localdomain>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: add STP xstats
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

On 10/12/2019 22:10, Vivien Didelot wrote:
> Hi Nikolay,
> 
> On Tue, 10 Dec 2019 21:50:10 +0200, Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:
>>>> Why do you need percpu ? All of these seem to be incremented with the
>>>> bridge lock held. A few more comments below.
>>>
>>> All other xstats are incremented percpu, I simply followed the pattern.
>>>
>>
>> We have already a lock, we can use it and avoid the whole per-cpu memory handling.
>> It seems to be acquired in all cases where these counters need to be changed.
> 
> Since the other xstats counters are currently implemented this way, I prefer
> to keep the code as is, until we eventually change them all if percpu is in
> fact not needed anymore.
> 
> The new series is ready and I can submit it now if there's no objection.
> 
> 
> Thanks,
> 
> 	Vivien
> 

There is a reason other counters use per-cpu - they're incremented without any locking from fast-path.
The bridge STP code already has a lock which is acquired in all of these paths and we don't need
this overhead and the per-cpu memory allocations. Unless you can find a STP codepath which actually
needs per-cpu, I'd prefer you drop it.

Thank you,
 Nik

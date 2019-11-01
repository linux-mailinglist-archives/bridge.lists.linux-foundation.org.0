Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 2020BEC3B5
	for <lists.bridge@lfdr.de>; Fri,  1 Nov 2019 14:33:53 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0F93019B8;
	Fri,  1 Nov 2019 13:33:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2903B180A
	for <bridge@lists.linux-foundation.org>;
	Fri,  1 Nov 2019 12:40:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
	[209.85.167.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7E81D87B
	for <bridge@lists.linux-foundation.org>;
	Fri,  1 Nov 2019 12:40:08 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id a6so3730886lfo.3
	for <bridge@lists.linux-foundation.org>;
	Fri, 01 Nov 2019 05:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=o8ofZ8eXn+g9/RF1tzn7A+DDx4j3eT/FW3TtKGM6VyE=;
	b=Ng8wgICpvpl1MfKvPqHa0mPOudn1mBAB5RoXVdSLBNf5UJWAyf9zafHKqhK4WnDrdV
	hNDUzcK7yBFt5L6iZCL9dJ4pVs2OuLBc0f0qeTMguHKgE4HCDmJXuhTbgvwtn3ejnOIL
	HHcnPMCxiafLfuGC4xBvZyDX1HauQpq/kH1Qw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=o8ofZ8eXn+g9/RF1tzn7A+DDx4j3eT/FW3TtKGM6VyE=;
	b=AljjsC0+zq6tJaAujY2/FeEA2QU8O5borNgW2eu6yGO+Y0HctUmiayLQwTuQyl8PSg
	y4GSztA9pVULolMUS1s7HrwGs6SXF69v0+NVGe8H9564Q0/uteyMHuHV6NP2WpA6x4/7
	p3TYtX1FzzywDCyizTP/x5OcMeGe5C+MPv16QacDrU+3MRY3MtoJfcrSO/H3+SsKvwrT
	jVNWtC4jv3Cs9hjhhjuamM7aCRVKEnZv6D/Ss/K5KxBSXtILOjyQ6iq8J1iNVEqh62+c
	vkyvjWlvqJuqLlnfharIYmveKHTgIcnrPBjM736d7KQ0dIgqgs8zaD9AL1JyWvK9zX6I
	UwqQ==
X-Gm-Message-State: APjAAAXLTV5UpzdaQLR8M8JeaVMc1z2+M8c5SqG/BGD2rrxqmwxcFboZ
	3thwaSdKMUAXG1eyNPcTkGCPCA==
X-Google-Smtp-Source: APXvYqznRsj4Tuag+vZIMClNNYXsLqbHaLZ5hXMSJywhknE607w8pkePzAta0Po0xwQfm2uV2zSuTA==
X-Received: by 2002:a19:651b:: with SMTP id z27mr7080070lfb.117.1572612006816; 
	Fri, 01 Nov 2019 05:40:06 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id
	c24sm2771269lfm.20.2019.11.01.05.40.05
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 01 Nov 2019 05:40:06 -0700 (PDT)
To: netdev@vger.kernel.org
References: <20191101123844.17518-1-nikolay@cumulusnetworks.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <3a71de17-99ab-813f-62f2-691cde514e31@cumulusnetworks.com>
Date: Fri, 1 Nov 2019 14:40:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191101123844.17518-1-nikolay@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 0/3] net: bridge: minor followup
	optimizations
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On 01/11/2019 14:38, Nikolay Aleksandrov wrote:
> Hi,
> After the converted flags to bitops we can take advantage of the flags
> assignment and remove one test and three atomic bitops from the learning
> paths (patch 01 and patch 02), patch 03 restores the unlikely() when taking
> over HW learned entries.
> 
> Thanks,
>  Nik
> 
> 
> Nikolay Aleksandrov (3):
>   net: bridge: fdb: br_fdb_update can take flags directly
>   net: bridge: fdb: avoid two atomic bitops in
>     br_fdb_external_learn_add()
>   net: bridge: fdb: restore unlikely() when taking over externally added
>     entries
> 
>  include/trace/events/bridge.h | 12 ++++++------
>  net/bridge/br_fdb.c           | 30 +++++++++++++++---------------
>  net/bridge/br_input.c         |  4 ++--
>  net/bridge/br_private.h       |  2 +-
>  4 files changed, 24 insertions(+), 24 deletions(-)
> 


Aaargh.. apologies for the noise, the script caught an older set export.
Will re-post a proper v2 in a minute.



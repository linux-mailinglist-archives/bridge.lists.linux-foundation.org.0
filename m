Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8D28DEE8
	for <lists.bridge@lfdr.de>; Wed, 14 Aug 2019 22:35:09 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id F3FB2E1D;
	Wed, 14 Aug 2019 20:35:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 04EDFDCB
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 20:34:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
	[209.85.167.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2EA1087E
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 20:34:57 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id h28so216881lfj.5
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 13:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=WaTpDcNJiFZ4IX53WMjagAg27UGU/T1qAMZT3ZurcgM=;
	b=IPxN8Jas+/uH5XGOyP1zFTo6cyC+dxOCOwsRWzAF/DXb+/ZAyQrLYV9ajpXQZEK1PJ
	o6pCQNuei16cetLhbZTmWt9ZbquwZTsHkN9Z0EjN0D48sLX50LKJKpTLS+JLHNnXU8vh
	Nn+oWRzJFG/tq7mCHEWJOZGE++KBtJSnfUd10=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=WaTpDcNJiFZ4IX53WMjagAg27UGU/T1qAMZT3ZurcgM=;
	b=Vmztd46K5+EEzg55TV4wsFHhawh1xuEsVUdwlvmSckJpEybm9/gKtQfC3YmICXi+g0
	p5jm38H81eecOXbZ68fr4fGtl9KVBWvqnnidsnCXglK7d+zwFLAw0kKm/+zitwCpbJqx
	Sl22fC5bnbAKg0vXKH9d3iZOnUnsuloo+o5MQDEnbZm/mUQhH/02jreeuaoW0m79iEzO
	3LuVndki6Hh+FPI3m762+7ZYA/UTOZHenGFLoM4jj7y6NZWBN8WOo4cNoipF/RgFvdW+
	sgHoIvAUV/GBPgCm0hTH4H6BDl7WYaKne6wFkn4Shli/+TfGhNMOXdLQfhxdl/OtGcu7
	vG3w==
X-Gm-Message-State: APjAAAUyt2O0mS1Gf98fUCyeINZwdDainoHQNnzry4PIOr4U+e9ZVbot
	G0hBDTRpl4Gvk5GaEA960ydoZw==
X-Google-Smtp-Source: APXvYqwSFkz4D0yKfJypaBayIEzRaIzmqDibuhPMxmuQunuqn5fcJSzpV6yh8GrMUl5djQ3M7f8xlw==
X-Received: by 2002:a19:ed11:: with SMTP id y17mr629641lfy.141.1565814895558; 
	Wed, 14 Aug 2019 13:34:55 -0700 (PDT)
Received: from [192.168.0.104] ([79.134.174.40])
	by smtp.googlemail.com with ESMTPSA id
	g12sm97826lfc.96.2019.08.14.13.34.53
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 14 Aug 2019 13:34:55 -0700 (PDT)
To: =?UTF-8?Q?Linus_L=c3=bcssing?= <linus.luessing@c0d3.blue>,
	Patrick Ruddy <pruddy@vyatta.att-mail.com>
References: <20190813141804.20515-1-pruddy@vyatta.att-mail.com>
	<20190813195341.GA27005@splinter>
	<43ed59db-9228-9132-b9a5-31c8d1e8e9e9@cumulusnetworks.com>
	<620d3cfbe58e3ae87ef1d5e7f2aa1588cac3e64a.camel@vyatta.att-mail.com>
	<20190814201138.GE2431@otheros>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <d0be5038-e76f-d21b-a034-e450cbb3010e@cumulusnetworks.com>
Date: Wed, 14 Aug 2019 23:34:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814201138.GE2431@otheros>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Ido Schimmel <idosch@idosch.org>, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, netdev@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next] mcast: ensure L-L IPv6 packets are
 accepted by bridge
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

On 8/14/19 11:11 PM, Linus Lüssing wrote:
> On Wed, Aug 14, 2019 at 05:40:58PM +0100, Patrick Ruddy wrote:
>> The group is being joined by MLD at the L3 level but the packets are
>> not being passed up to the l3 interface becasue there is a MLD querier
>> on the network
>>
>> snippet from /proc/net/igmp6
>> ...
>> 40   sw1             ff0200000000000000000001ff008700     1 00000004 0
>> 40   sw1             ff020000000000000000000000000002     1 00000004 0
>> 40   sw1             ff020000000000000000000000000001     1 0000000C 0
>> 40   sw1             ff010000000000000000000000000001     1 00000008 0
>> 41   lo1             ff020000000000000000000000000001     1 0000000C 0
>> 41   lo1             ff010000000000000000000000000001     1 00000008 0
>> 42   sw1.1           ff020000000000000000000000000006     1 00000004 0
>> 42   sw1.1           ff020000000000000000000000000005     1 00000004 0
>> 42   sw1.1           ff0200000000000000000001ff000000     2 00000004 0
>> 42   sw1.1           ff0200000000000000000001ff008700     1 00000004 0
>> 42   sw1.1           ff0200000000000000000001ff000099     1 00000004 0
>> 42   sw1.1           ff020000000000000000000000000002     1 00000004 0
>> 42   sw1.1           ff020000000000000000000000000001     1 0000000C 0
>> 42   sw1.1           ff010000000000000000000000000001     1 00000008 0
>> ...
>>
>> the bridge is sw1 and the l3 intervace is sw1.1
> 
> What kind of interface is sw1.1 exactly? Is it a VLAN or a VRF
> interface? Something else?
> 
+1

> Could you also post the output of bridge mdb show?
> 
> Regards, Linus
> 
> 
> PS: Also please include the bridge mailinglist in the future.
> 

Note that if you'd like to debug a host joined group currently bridge mdb show
will not dump it and if the group is host-joined only it
can even be empty. You can use my latest set (not applied yet):
http://patchwork.ozlabs.org/project/netdev/list/?series=125169

Alternatively you could monitor the mdb events, it will show up there even
today without any changes (bridge monitor mdb) and you can check if it's
getting deleted.

Cheers,
 Nik

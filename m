Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AA6A6786
	for <lists.bridge@lfdr.de>; Tue,  3 Sep 2019 13:37:54 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0A1E2D82;
	Tue,  3 Sep 2019 11:37:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 333A8D4B
	for <bridge@lists.linux-foundation.org>;
	Tue,  3 Sep 2019 11:37:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ED9528A6
	for <bridge@lists.linux-foundation.org>;
	Tue,  3 Sep 2019 11:37:42 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id p3so8973468pgb.9
	for <bridge@lists.linux-foundation.org>;
	Tue, 03 Sep 2019 04:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=SyZ0OnaiZxTBRVMhjHHgMsFegnhPy0MogSls5tEiHGc=;
	b=PCbMZkclPJadTAOOHSEcUTF06VCwXWf6a9bM3v0a3BGXaVhqGf/g6hwbDWYFtBhLiH
	KzFhjJrq7C7AQMcY4dYhlrHNGeTIvDH4v2c8xdYIGg61mAj/ZFkQzOAtN1pajDd5eytQ
	DcP9hitP2lqkZAJKlnvA5x9h3Pwrg7cfZJzgsY2u3X2msITFOX3iz9zKGOpOL70RpG8G
	wTfEmcpldaaLLbwQOvAWk7EOiq+Ahq/SUo4MeVtojb+MAliLDqk3bGWSFNVTGNryIla9
	PtwhUMDbbdi3JDaF8ahi2WBdQk8ktFQc8ObiGP3eumjd/nV2c9mwcnXFmG+3zPNGnJw5
	1IiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=SyZ0OnaiZxTBRVMhjHHgMsFegnhPy0MogSls5tEiHGc=;
	b=g/NDXvGx1A6eShCvf+KmmglBTu3YaaSTplOwx/sdKwtioMyabNME1YBHXNmDM99il7
	9X6QuzrIkIJGmkt2yl+kKECjIQxvbOCyCJSQq9cGWUkjpKEVhmMi6MX5+Ex+86Uaoxtx
	y7yfLJE/4DtvtPT9mWPTZP955tpbju3mHZo17TVtO0xvLMewwClaP+/wI6Ze5CU1MKr9
	D6A/ha9D/jOSweWnK6vWq7PdDSBCw7pRw0g927gpekcNMeKH4OSvqp24O5h/0GBLjWGc
	mUdkdVxbOZNFxwcqTGgtGQBgg+fydD7kY224TFLH4IBgyBBYO2mv3vuSDi3wlHGidHS3
	gNrA==
X-Gm-Message-State: APjAAAUsLfhp3BTtjOarYwvz+rK5KSJa345yaclL6BO/04YqTSN2jJ8A
	f5PqBF8VRtI6vYqvVzqarQU=
X-Google-Smtp-Source: APXvYqzWmYGPm+sr1wQUxGBvk6ZpuZw7Er4EgVJI8w8NPhXlZ0cREGEKXy9Gj+Q4Wt6t7Tx2oQ0diQ==
X-Received: by 2002:a62:2a55:: with SMTP id q82mr36416188pfq.23.1567510662675; 
	Tue, 03 Sep 2019 04:37:42 -0700 (PDT)
Received: from [172.20.20.103] ([222.151.198.97])
	by smtp.gmail.com with ESMTPSA id
	j1sm18383866pfh.174.2019.09.03.04.37.39
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 03 Sep 2019 04:37:42 -0700 (PDT)
To: Zahari Doychev <zahari.doychev@linux.com>, netdev@vger.kernel.org
References: <20190902181000.25638-1-zahari.doychev@linux.com>
From: Toshiaki Makita <toshiaki.makita1@gmail.com>
Message-ID: <76b7723b-68dd-0efc-9a93-0597e9d9b827@gmail.com>
Date: Tue, 3 Sep 2019 20:37:36 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190902181000.25638-1-zahari.doychev@linux.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: dsahern@gmail.com, jiri@resnulli.us, nikolay@cumulusnetworks.com,
	simon.horman@netronome.com, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, jhs@mojatatu.com,
	makita.toshiaki@lab.ntt.co.jp, xiyou.wangcong@gmail.com,
	johannes@sipsolutions.net, alexei.starovoitov@gmail.com
Subject: Re: [Bridge] [PATCH v3 1/2] net: bridge: use mac_len in bridge
 forwarding
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

Hi Zahari,

Sorry for reviewing this late.

On 2019/09/03 3:09, Zahari Doychev wrote:
...
> @@ -466,13 +466,14 @@ static bool __allowed_ingress(const struct net_bridge *br,
>   		/* Tagged frame */
>   		if (skb->vlan_proto != br->vlan_proto) {
>   			/* Protocol-mismatch, empty out vlan_tci for new tag */
> -			skb_push(skb, ETH_HLEN);
> +			skb_push(skb, skb->mac_len);
>   			skb = vlan_insert_tag_set_proto(skb, skb->vlan_proto,
>   							skb_vlan_tag_get(skb));

I think we should insert vlan at skb->data, i.e. mac_header + mac_len, while this
function inserts the tag at mac_header + ETH_HLEN which is not always the correct
offset.

>   			if (unlikely(!skb))
>   				return false;
>   
>   			skb_pull(skb, ETH_HLEN);

Now skb->data is mac_header + ETH_HLEN which would be broken when mac_len is not
ETH_HLEN?

> +			skb_reset_network_header(skb);
>   			skb_reset_mac_len(skb);
>   			*vid = 0;
>   			tagged = false;
> 

Toshiaki Makita

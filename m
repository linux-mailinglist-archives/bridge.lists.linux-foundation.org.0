Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4868B13AFF7
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 17:49:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8C20885AB9;
	Tue, 14 Jan 2020 16:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eYeIfifrk26l; Tue, 14 Jan 2020 16:49:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C2E085A70;
	Tue, 14 Jan 2020 16:49:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6D804C077D;
	Tue, 14 Jan 2020 16:49:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7A292C077D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:49:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6CE2B2052D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:49:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id alFFyaqgTYmx for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jan 2020 16:49:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by silver.osuosl.org (Postfix) with ESMTPS id A6A6120528
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:49:15 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id t129so12699901qke.10
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 08:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GeTSHz91fcXtgbICDsZuWJas6zJnynbYdE0cwNsBcng=;
 b=t1u8MbhfGSbOxyQab3hacmNqz8xVfzaZoD5Apdw/KcLgnfJmGFpTLGooe004LAjP5i
 PfFG3haUyCyEtZnKccw3ZxpEPd1gx67oVp3LlWclSVSSecuL280j0iKCzU4kEZNm1WLa
 qe/y1Sk0f9r+MLTt0YWXAsKYApFZ2y46Np3CsCXkjZFhMuad0D8uitARY/MIAHCShti7
 czoT/APCsnSsJg9Xz5Tc6Q8X7F12MhuCVo5rbxWnRPztcu1yt3ysHejavyZLxWih7FiT
 ojt2YNRa9mgV6wMFkTIK1TI1VehYodeFhPAQJotjLhUo3g00EkYyvffHOXSVk0wo6o71
 ui3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GeTSHz91fcXtgbICDsZuWJas6zJnynbYdE0cwNsBcng=;
 b=t2FY6BZyENVGpVGI/RfNYBHLN9X8IeyXAwtkKlUcHtq7BWF44v3cTRbHJFfyWbsgmr
 906QCPGGPCnzG41zVMfNBm+aOC7y+IpqvlPDJAD0RAe8BtIlrqHxD2m1GMAMasRet2Te
 /Znb4edvQWLSvdgsRhjEQVoOu3BzETLMJJbMuP2oG4MNl9Ktdud+lE4vH22Wi0FbV2fq
 t5KZdlzvrEbnOp6KwlwhtnqxpO690fak9nDEDqDGAVuvjwPaQiFPe2dFsOeUT5wHxc9b
 Odtf9XQZF7D516nj5D4ph2rPuJzUioU4CvApLjRehR7zStKjhfjde/OkvL2CRy69XQCB
 MifA==
X-Gm-Message-State: APjAAAURUo3D+iaJLbP4LeamOzRuaaoqzWpUYl86MWVxiL7L6tEPCZ3S
 h07PajMU9DtLxjTU6UPzp9BOdcYs
X-Google-Smtp-Source: APXvYqxqlVMixEfc4ZWCf1vVaJg+BOUSqibaCI7brjRH5MMoZovm9hTRKFgw+iPaIgPAM1bT2RDTFA==
X-Received: by 2002:a05:620a:1415:: with SMTP id
 d21mr22153009qkj.17.1579020554398; 
 Tue, 14 Jan 2020 08:49:14 -0800 (PST)
Received: from ?IPv6:2601:282:800:7a:cda2:cdcb:a404:13ae?
 ([2601:282:800:7a:cda2:cdcb:a404:13ae])
 by smtp.googlemail.com with ESMTPSA id z6sm6770263qkz.101.2020.01.14.08.49.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jan 2020 08:49:13 -0800 (PST)
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 Jakub Kicinski <kuba@kernel.org>
References: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
 <20200113155233.20771-4-nikolay@cumulusnetworks.com>
 <20200114055544.77a7806f@cakuba.hsd1.ca.comcast.net>
 <076a7a9f-67c6-483a-7b86-f9d70be6ad47@gmail.com>
 <00c4bc6b-2b31-338e-a9ad-b4ea28fc731c@cumulusnetworks.com>
 <344f496a-5d34-4292-b663-97353f6cfa94@cumulusnetworks.com>
From: David Ahern <dsahern@gmail.com>
Message-ID: <d5291717-2ce5-97e0-6204-3ff0d27583c5@gmail.com>
Date: Tue, 14 Jan 2020 09:49:11 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <344f496a-5d34-4292-b663-97353f6cfa94@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/8] net: bridge: vlan: add rtm
 definitions and dump support
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

On 1/14/20 9:45 AM, Nikolay Aleksandrov wrote:
> On 14/01/2020 18:36, Nikolay Aleksandrov wrote:
>> On 14/01/2020 17:34, David Ahern wrote:
>>> On 1/14/20 6:55 AM, Jakub Kicinski wrote:
>>>> On Mon, 13 Jan 2020 17:52:28 +0200, Nikolay Aleksandrov wrote:
>>>>> +static int br_vlan_rtm_dump(struct sk_buff *skb, struct netlink_callback *cb)
>>>>> +{
>>>>> +	int idx = 0, err = 0, s_idx = cb->args[0];
>>>>> +	struct net *net = sock_net(skb->sk);
>>>>> +	struct br_vlan_msg *bvm;
>>>>> +	struct net_device *dev;
>>>>> +
>>>>> +	if (cb->nlh->nlmsg_len < nlmsg_msg_size(sizeof(*bvm))) {
>>>>
>>>> I wonder if it'd be useful to make this a strict != check? At least
>>>> when strict validation is on? Perhaps we'll one day want to extend 
>>>> the request?
>>>>
>>>
>>> +1. All new code should be using the strict checks.
>>>
>>
>> IIRC, I did it to be able to add filter attributes later, but it should just use nlmsg_parse()
>> instead and all will be taken care of.
>> I'll respin v2 with that change.
>>
>> Thanks,
>>  Nik
>>
> 
> Actually nlmsg_parse() uses the same "<" check for the size before parsing. :)
> If I change to it and with no attributes to parse would be essentially equal to the
> current situation, but if I make it strict "!=" then we won't be able to add
> filter attributes later as we won't be backwards compatible. I'll continue looking
> into it, but IMO we should leave it as it is in order to be able to add the filtering later.
> 
> Thoughts ?
> 
> 
> 
> 

If the header is > sizeof(*bvm) I expect this part of
__nla_validate_parse() to kick in:

        if (unlikely(rem > 0)) {
                pr_warn_ratelimited("netlink: %d bytes leftover after
parsing attributes in process `%s'.\n",
                                    rem, current->comm);
                NL_SET_ERR_MSG(extack, "bytes leftover after parsing
attributes");
                if (validate & NL_VALIDATE_TRAILING)
                        return -EINVAL;
        }


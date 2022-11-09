Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D036B6233F8
	for <lists.bridge@lfdr.de>; Wed,  9 Nov 2022 20:56:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CAA1740B6D;
	Wed,  9 Nov 2022 19:56:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CAA1740B6D
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=networkplumber-org.20210112.gappssmtp.com header.i=@networkplumber-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=bbQKI/dp
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dnU-EO0XRD0N; Wed,  9 Nov 2022 19:56:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 5F67340B4E;
	Wed,  9 Nov 2022 19:56:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F67340B4E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 16B60C002D;
	Wed,  9 Nov 2022 19:56:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F38A5C0032
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 19:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C14D640B5E
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 19:56:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C14D640B5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ueHt0leDpx9Q for <bridge@lists.linux-foundation.org>;
 Wed,  9 Nov 2022 19:56:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C51A840484
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C51A840484
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 19:56:15 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id q9so17689434pfg.5
 for <bridge@lists.linux-foundation.org>; Wed, 09 Nov 2022 11:56:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XKiJZH6Es83//EagG3nQ5yRqJCt2B3oQ4QwF9MG3yus=;
 b=bbQKI/dphQ7+nWcC2OCJjIvpiM9iE/MKAli+jjkT/4RKZtCGEESeQ437b1HFbC2rue
 +gEFKhpAKgWoXVZhgwX9hlNLLczmyEPTrMGJytlcEtWMYMvRgB4V3nCBVkVnfw/tm7pz
 tPdAnF2unw7drYHKGXw4HEvSOcjCc/9TtHivLvVgOlw+1axHAhDua6wAkYm3kwvjrQmI
 BozHCgmfCtTOVuEMbiftAZkkUcENCJzaOkWr0C8gbNWBh2ykP4KZaztFVzakP50Voeg/
 FtoZ3+F5aeyEECv1yvne/poRjox8xi8K7Z6iEys6Jcv34B83qZcut4JZLI2UbW669jUy
 BKfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XKiJZH6Es83//EagG3nQ5yRqJCt2B3oQ4QwF9MG3yus=;
 b=yOdYNNIetJVEutcRXgx7N2glXEVh85lXKbjbM/Rry6a71162jXWj20Gozv8wuAyBJ3
 tQW/WieWT0tFnBG0JF3GYnNU2l7fXsGXAA8xQfWr4t5/GeZCpyBXfOHb67R+nwGxnF52
 F/Cvm7ppgYOcrIkUQORfoKiiEREa093TgUQnXvNO9hVQ9vZnTZln2OE7qmdsnQLbQDmm
 pIz+2dr1MxjzdX5P9QmIio1rvvGFdPvpbhRgCtpj6OyFzuI3yHVAp9MtXVULHZ7PNAm7
 1yPIFJzehHTbUfGm+Qs5SLTczc7NW0OddrUJPEkpytHWSJk7WU4u3D8Blt7EchZo9KiD
 4LRw==
X-Gm-Message-State: ANoB5pk8VJSs2Tn3QLBHeuhCCtOVAM9MUbqQ7eszUn6Q2bXodbp3/jLE
 vEF0bw4jIzaFk9DXLfpbnTS2oQ==
X-Google-Smtp-Source: AA0mqf7ZiNdbP+tA7jwBXoKY+xgM1U4gYoW3tERj/QjEfMISC4tjrYfG6moYBCbujitwpomK84sZGw==
X-Received: by 2002:a05:6a00:1689:b0:56e:d7f4:3aca with SMTP id
 k9-20020a056a00168900b0056ed7f43acamr22987605pfc.55.1668023775159; 
 Wed, 09 Nov 2022 11:56:15 -0800 (PST)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 c2-20020a170903234200b001869efb722csm9519590plh.215.2022.11.09.11.56.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Nov 2022 11:56:14 -0800 (PST)
Date: Wed, 9 Nov 2022 11:55:47 -0800
To: Ali Shirvani <alishirv@protonmail.com>
Message-ID: <20221109115547.494d5006@hermes.local>
In-Reply-To: <pPm5jFjNYHBUzqlDouAIg2v7XTQZJnHIVSWXoYOaTijreJ22xAZOSAcwJXHJiTLN8jIAQCs-LeX7hp9hp-FaxW-HGjn69fc6-eG3Kv6lxc4=@protonmail.com>
References: <nWfVbvdboX65r0xMXv0iZCj8TH7c8vStvilCD3Ilx5Y42yoHh34rJHJBMy8y4HhqXWXM0n3tLhLD870c863UjI20HBSxM8qwJlLMxuPjg0g=@protonmail.com>
 <20221109085109.6b0f87d3@hermes.local>
 <pPm5jFjNYHBUzqlDouAIg2v7XTQZJnHIVSWXoYOaTijreJ22xAZOSAcwJXHJiTLN8jIAQCs-LeX7hp9hp-FaxW-HGjn69fc6-eG3Kv6lxc4=@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Ali Shirvani via Bridge <bridge@lists.linux-foundation.org>
Subject: Re: [Bridge] How to connect more than 200 interfaces to a bridge
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
From: Stephen Hemminger via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Wed, 09 Nov 2022 19:25:32 +0000
Ali Shirvani <alishirv@protonmail.com> wrote:

> Sent with Proton Mail secure email.
> 
> ------- Original Message -------
> On Wednesday, November 9th, 2022 at 8:21 PM, Stephen Hemminger <stephen@networkplumber.org> wrote:
> 
> 
> > On Wed, 09 Nov 2022 10:51:27 +0000
> > Ali Shirvani via Bridge bridge@lists.linux-foundation.org wrote:
> >   
> > > Hello everyone,
> > > 
> > > It seems we reach the Linux bridge limitation on the number of interfaces in a single bridge. Currently, we have 210 tap interface in a bridge, and we suffer from more than 50% packet loss when we ping the IP address of the virtual machine that uses one of the tap interfaces in the bridge.
> > > Do you know how we can connect more than 200 VMs virtual interfaces to a bridge?
> > > 
> > > Best regards,
> > > Ali
> > > 
> > > Sent with Proton Mail secure email.  
> > 
> > 
> > The upper limit on interfaces per bridge should be 1023.
> > That limitation comes from spanning tree.
> > 
> > You might bet able to improve performance by disabling flooding to those tap devices.
> > Normally, any broadcast/unknown/multicast must be copied and flooded to each interface.  
> 
> Thanks a lot for your guidance. I disabled the spanning tree on the bridge with `brctl stp br0 off` but the issue does not resolve. Would you please elaborate more about disabling flooding on tap devices, I don't know how I should disable flooding on tap devices.

It is not a spanning tree issue, in fact STP can protect you from bad VM's.
It is more about configuring the bridge ports after setup.

Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D94D7A4647
	for <lists.bridge@lfdr.de>; Mon, 18 Sep 2023 11:44:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 030A140593;
	Mon, 18 Sep 2023 09:44:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 030A140593
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=caYd3g/O
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5O6oxK3YsfZn; Mon, 18 Sep 2023 09:44:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 6B1AD414B4;
	Mon, 18 Sep 2023 09:44:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B1AD414B4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 222E0C0071;
	Mon, 18 Sep 2023 09:44:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C8281C0032
 for <bridge@lists.linux-foundation.org>; Fri, 15 Sep 2023 19:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F48C40207
 for <bridge@lists.linux-foundation.org>; Fri, 15 Sep 2023 19:52:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F48C40207
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aUHnojA6oI2p for <bridge@lists.linux-foundation.org>;
 Fri, 15 Sep 2023 19:52:32 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 68BB24010D
 for <bridge@lists.linux-foundation.org>; Fri, 15 Sep 2023 19:52:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68BB24010D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1694807551;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HNgfdJeO076tImx6jFh9hOiFdIPM4yz7+TlZmmONbfo=;
 b=caYd3g/OTvPdRkqJGjSUOni9v8dLL1ubt/idcXL2Pgv5sQztmarzgqw9LAmU0ZRAl+T6WF
 Kyw8+9gfA3zlTzVvsxV+2GiEwlrVYWO3PXB2ymx1b4MiCBqdg4Q6ErBA40DHGMFW7B16u1
 fJw0WJ4y0JDmXv3lA2fRRZtau9WZDYM=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-402-6J39nRCWPBOaeRrvHLWrCA-1; Fri, 15 Sep 2023 15:52:29 -0400
X-MC-Unique: 6J39nRCWPBOaeRrvHLWrCA-1
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-3fd0fa4d08cso19429605e9.1
 for <bridge@lists.linux-foundation.org>; Fri, 15 Sep 2023 12:52:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694807547; x=1695412347;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HNgfdJeO076tImx6jFh9hOiFdIPM4yz7+TlZmmONbfo=;
 b=tkpIYZs0u8qq70+JLgsbHu4yrmjxoIM+5/A/JOfnpa0G7zu+kDwOw/z7d7ClSW2Ze6
 qVRijg5Mdg1XCF3+AdeEGd6pUHOFHfIxUUafSAJCH8VYD813PT84KB2WKRqvNPB6de6r
 ROXkXGwEMUC4mcpxi7CWNU5JJ51fMIpwHUtys8tR3A5VwUdV2TJkusug5voJcpm5YgoZ
 v3Wr3YFhUu7kppZfdBTEtad+UraS+SMi00pBts8dHYk66XsAOT28/00lJnvOjwFTq64v
 wJ3G693MZj88St91L3rtw1hbTF/yB4OCIw0t1TqDDl00ezjSY85fCyHZG4fbKJdGobfz
 Aicg==
X-Gm-Message-State: AOJu0YwzIO35GdxLsPmB6xzB9C+rAkKw4K/aAU7oFwL2Wq8V+4GZ2U/e
 UgBvTxA8O7Jpu3kyhcSq6xw0KJs3v5RctYIx1HnM55poolfZaYZNMu5Bq4XDGtzgt9SA4Hep50F
 Q0X8WS0tF4mHxpe58vGgaf0SaQ8kEkIE=
X-Received: by 2002:a7b:c40d:0:b0:403:bb3:28bf with SMTP id
 k13-20020a7bc40d000000b004030bb328bfmr2261440wmi.23.1694807547636; 
 Fri, 15 Sep 2023 12:52:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmlmT0ooNTnsAwr0JuC93RZbtPuUICSBkNB34kVLhlyWNQHIW9rl6cri/YkGGKH+2LXdQkpA==
X-Received: by 2002:a7b:c40d:0:b0:403:bb3:28bf with SMTP id
 k13-20020a7bc40d000000b004030bb328bfmr2261420wmi.23.1694807547265; 
 Fri, 15 Sep 2023 12:52:27 -0700 (PDT)
Received: from localhost ([37.163.8.26]) by smtp.gmail.com with ESMTPSA id
 n12-20020a05600c294c00b003ff3b964a9asm8289732wmd.39.2023.09.15.12.52.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Sep 2023 12:52:26 -0700 (PDT)
Date: Fri, 15 Sep 2023 21:52:22 +0200
From: Andrea Claudi <aclaudi@redhat.com>
To: Stephen Hemminger <stephen@networkplumber.org>
Message-ID: <ZQS19lwZlso1AMAR@renaissance-vector>
References: <cover.1694625043.git.aclaudi@redhat.com>
 <844947000ac7744a3b40b10f9cf971fd15572195.1694625043.git.aclaudi@redhat.com>
 <20230915085912.78ffd25c@hermes.local>
MIME-Version: 1.0
In-Reply-To: <20230915085912.78ffd25c@hermes.local>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Approved-At: Mon, 18 Sep 2023 09:44:19 +0000
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, David Ahern <dsahern@gmail.com>,
 Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH iproute2-next 1/2] configure: add the --color
	option
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

On Fri, Sep 15, 2023 at 08:59:12AM -0700, Stephen Hemminger wrote:
> On Wed, 13 Sep 2023 19:58:25 +0200
> Andrea Claudi <aclaudi@redhat.com> wrote:
> 
> > This commit allows users/packagers to choose a default for the color
> > output feature provided by some iproute2 tools.
> > 
> > The configure script option is documented in the script itself and it is
> > pretty much self-explanatory. The default value is set to "never" to
> > avoid changes to the current ip, tc, and bridge behaviour.
> > 
> > Signed-off-by: Andrea Claudi <aclaudi@redhat.com>
> > ---
> 
> More build time config is not the answer either.
> Don't want complaints from distribution users about the change.
> Needs to be an environment variable or config file.
>

Hi Stephen,
This is not modifying the default behaviour; as David noted color output
will be off as it is right now. If packagers want to make use of this,
it's up to them to choose a sane default for their environment. After
all, we are providing options such as '--prefix' and '--libdir', and
there are endless possibilities to choose obviously wrong values for
these vars. Packagers are gonna deal with their own choices.

I think I can improve this in two ways:

1. Exclude 'always' from the allowed color choices
This is the setting with the highest chance to produce complaints, since
it is enabling color output regardless of stdout state. 'auto' instead
produces color output only on stdout that are terminals. Of course
'always' will remain as a param choice for the command line.

2. Add packaging guidelines to README (or README.packaging)
iproute packaging is a bit tricky, since some packaging systems simply
assume that configure comes from autotools. We even leverage this to our
advantage, providing configure options that packaging systems use
flawlessly as the autotools ones. I can provide some info about this,
and add some recommendations about sane configure defaults, especially
about the --color option.

What do you think? Is this approach fine for you?

